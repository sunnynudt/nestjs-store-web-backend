import {
    Catch,
    HttpException,
    ExceptionFilter,
    ArgumentsHost,
    HttpStatus,
    Inject,
} from '@nestjs/common';

import { Logger } from 'src/common/logger/logger';

@Catch(HttpException)
export class HttpExceptionsFilter implements ExceptionFilter {
    @Inject(Logger)
    private logger: Logger;

    catch(exception: any, host: ArgumentsHost) {
        const ctx = host.switchToHttp();
        const response = ctx.getResponse();
        const request = ctx.getRequest();
        const status = exception.getStatus();
        const exceptionResponse = exception.getResponse();

        const logFormat = `
        ##############################################################################################################
        Request original url: ${request.originalUrl}
        Method: ${request.method}
        IP: ${request.ip}
        Status code: ${status}
        Response: ${exception.toString() + `（${exceptionResponse?.message || exception.message}）`}
        ##############################################################################################################
        `;

        this.logger.error(logFormat, 'HttpExceptions Filter');

        response.status(status).json({
            code: status,
            success: false,
            message: exceptionResponse?.message || exception.message,
            type: `${status >= HttpStatus.INTERNAL_SERVER_ERROR ? 'Server' : 'Client'} Error`,
        });
    }
}

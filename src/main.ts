import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { Logger } from './common/logger/logger';
import { ValidationPipe } from '@nestjs/common';
import { ConfigService } from '@nestjs/config';

async function bootstrap() {
    const app = await NestFactory.create(AppModule, {
        cors: true, // 允许跨域
        logger: ['error', 'warn'],
    });

    const config = app.get(ConfigService);
    // 设置api访问前缀
    const prefix = config.get<string>('API_PREFIX');
    app.setGlobalPrefix(prefix);

    app.useLogger(app.get(Logger));
    app.useGlobalPipes(new ValidationPipe());
    console.log('APP_PORT', config.get<string>('APP_PORT'));

    await app.listen(config.get<number>('APP_PORT'));
}
bootstrap();

import { HttpException, HttpStatus, Inject, Injectable } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import { InjectRepository } from '@nestjs/typeorm';
import { DataSource, Repository } from 'typeorm';
import { classToPlain, plainToClass } from 'class-transformer';
import { compare, genSalt, hash } from 'bcryptjs';

import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';
import { RedisService } from 'src/common/redis/redis.service';
import { UserRoleEntity } from './entities/user-role.entity';
import { MailService } from 'src/common/mail/mail.service';

@Injectable()
export class UserService {
    @Inject(RedisService)
    private redsisService: RedisService;

    @InjectRepository(UserEntity)
    private userRepository: Repository<UserEntity>;

    @InjectRepository(UserRoleEntity)
    private userAuthRepository: Repository<UserRoleEntity>;

    @Inject(JwtService)
    private jwtService: JwtService;

    @Inject(MailService)
    private mailService: MailService;

    @Inject(DataSource)
    private dataSource: DataSource;


    /**
     * 注册用户
     * 
     * @param createUserDto 创建用户Dto
     * @returns 返回用户信息
     * 
     * @throws 如果用户名或注册邮箱已经存在，返回冲突错误
     * @throws 如果2次输入密码不一致，返回预期失败错误
     * @throws 如果验证码有误或已过期，返回预期失败错误
     */
    async register(createUserDto: CreateUserDto) {
        const { username, email } = createUserDto;
    }
}

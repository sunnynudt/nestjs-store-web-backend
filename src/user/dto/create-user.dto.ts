import { IsString, IsNotEmpty, IsEmail } from 'class-validator';

export class CreateUserDto {
    @IsNotEmpty({ message: '账号不能为空' })
    @IsString({ message: '账号必须是 String 类型' })
    username: string;

    @IsNotEmpty({ message: '密码不能为空' })
    @IsString({ message: '密码必须是 String 类型' })
    password: string;

    @IsNotEmpty({ message: '确认密码不能为空' })
    confirmPassword: string;

    @IsNotEmpty({ message: '邮箱不能为空' })
    @IsString({ message: '邮箱必须是 String 类型' })
    @IsEmail()
    email: string;

    @IsNotEmpty({ message: '验证码不能为空' })
    code: string;
}

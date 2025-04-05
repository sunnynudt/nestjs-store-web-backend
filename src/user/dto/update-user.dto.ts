import {
    IsNotEmpty,
    IsString,
    IsEmail,
    IsOptional,
    IsNumber,
} from 'class-validator';

export class UpdateUserDto {
    @IsNumber({}, { message: 'id类型必须是number' })
    @IsNotEmpty({ message: 'id不能为空' })
    id: number;

    @IsString({ message: '账号必须是 String 类型' })
    @IsOptional()
    username?: string;

    @IsString({ message: '邮箱必须是 String 类型' })
    @IsEmail()
    @IsOptional()
    email?: string;

    @IsNumber({}, { message: '冻结类型必须是number' })
    @IsOptional()
    freezed?: number;

    @IsOptional()
    roleIds?: number[];
}

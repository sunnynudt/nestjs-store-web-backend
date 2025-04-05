import {
    Column,
    Entity,
    PrimaryGeneratedColumn,
    CreateDateColumn,
} from 'typeorm';

@Entity('store_user')
export class UserRoleEntity {
    @PrimaryGeneratedColumn({ type: 'int' })
    id: number;

    @Column({ type: 'varchar', length: 32, comment: '用户登录账号' })
    username: string;

    @Column({ type: 'varchar', length: 200, comment: '用户登录密码' })
    password: string;

    @Column({ type: 'varchar', length: 50, comment: '哈希加密的盐' })
    salt: string;

    @Column({
        type: 'int',
        default: 1,
        comment: '用户类型 0 管理员 1 普通用户',
    })
    userType: number;

    @Column({ type: 'varchar', default: '', comment: '用户邮箱' })
    email: string;

    @Column({
        type: 'int',
        comment: '是否冻结用户 0 不冻结 1 冻结',
        default: 0,
    })
    freezed: number;

    @Column({ type: 'varchar', comment: '用户头像', default: '' })
    avatar: string;

    @Column({ type: 'varchar', comment: '用户备注', default: '' })
    desc: string;

    @CreateDateColumn({ type: 'timestamp', comment: '创建时间' })
    createTime: Date;
}

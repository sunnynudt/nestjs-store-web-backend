import { RedisKeyPrefix } from '../enums/redis-key.enum';

export function getRedisKey(moduleKey: RedisKeyPrefix, id?: number | string) {
    return `${moduleKey}:${id}`;
}

export interface ListToTreeOptions {
    root?: string | number;
    pidKey?: string;
    idKey?: string;
    childKey?: string;
}

export function listToTree(
    source: any[],
    {
        root = 0,
        pidKey = 'pid',
        idKey = 'id',
        childKey = 'children',
    }: ListToTreeOptions,
) {
    function getNode(id: string | number) {
        const nodes = [];
        for (let i = 0; i < source.length; i++) {
            if (source[i][pidKey] === id) {
                const children = getNode(source[i][idKey]);
                if (children.length > 0) {
                    source[i][childKey] = children;
                }
                nodes.push(source[i]);
            }
        }
        return nodes;
    }

    return getNode(root);
}

#include <stdlib.h>
#include <string.h>
#include <stddef.h>

/**
 * @brief 转换为c字符串
 *
 * @param str m字符串
 * @return const char* 字符串
 */
const char *c_str(const unsigned short *data)
{
    // 如果输入空指针，返回空指针
    if (data == NULL)
    {
        return NULL;
    }
    // 计算宽字符串长度（以16位单元计，直到遇到0）
    size_t len = 0;
    const unsigned short *p = data;
    while (*p++)
    {
        len++;
    }
    // 分配内存：len+1个char（包括终止符）
    char *buffer = (char *)malloc(len + 1);
    if (buffer == NULL)
    {
        return NULL; // 内存分配失败
    }
    // 将每个uint16_t转换为char（截断低8位）并复制
    for (size_t i = 0; i < len; i++)
    {
        buffer[i] = (char)(data[i] & 0xFF);
    }
    buffer[len] = '\0';
    return buffer;
}


void c_free(char *data)
{
    if (data != NULL)
    {
        free(data);
    }
}
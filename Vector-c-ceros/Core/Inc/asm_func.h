#pragma once

#include <stdint.h>


void asm_svc(void);
uint32_t asm_sum(uint32_t firstOperand, uint32_t secondOperand);
void zeros(uint32_t *vectorIn, uint32_t longitud);

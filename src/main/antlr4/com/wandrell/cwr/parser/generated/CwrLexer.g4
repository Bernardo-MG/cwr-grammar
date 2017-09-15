/**
 * The MIT License (MIT)
 * 
 * Copyright (c) 2017 the original author or authors.
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

/** 
 * Dice notation lexical rules.
 */
lexer grammar CwrLexer;

/**
 * Headers.
 */

HDR
:
   'HDR' WORD
;

TRL
:
   'TRL' WORD
;

GRH
:
   'GRH' WORD
;

GRT
:
   'GRT' WORD
;

ACK
:
   'ACK' WORD
;

ALT
:
   'ALT' WORD
;

AGR
:
   'AGR' WORD
;

ARI
:
   'ARI' WORD
;

COM
:
   'COM' WORD
;

EWT
:
   'EWT' WORD
;

EXC
:
   'EXC' WORD
;

IND
:
   'IND' WORD
;

INS
:
   'INS' WORD
;

IPA
:
   'IPA' WORD
;

ISW
:
   'ISW' WORD
;

PER
:
   'PER' WORD
;

MSG
:
   'MSG' WORD
;

NAT
:
   'NAT' WORD
;

NCT
:
   'NCT' WORD
;

NET
:
   'NET' WORD
;

NOW
:
   'NOW' WORD
;

NPA
:
   'NPA' WORD
;

NPN
:
   'NPN' WORD
;

NPR
:
   'NPR' WORD
;

NVT
:
   'NVT' WORD
;

NWN
:
   'NWN' WORD
;

NWR
:
   'NWR' WORD
;

OPU
:
   'OPU' WORD
;

ORN
:
   'ORN' WORD
;

OWR
:
   'OWR' WORD
;

PWR
:
   'PWR' WORD
;

REC
:
   'REC' WORD
;

REV
:
   'REV' WORD
;

SPT
:
   'SPT' WORD
;

SPU
:
   'SPU' WORD
;

SWR
:
   'SWR' WORD
;

SWT
:
   'SWT' WORD
;

TER
:
   'TER' WORD
;

VER
:
   'VER' WORD
;

/**
 * Tokens.
 */

WORD
:
   ([A-Z] | [0-9] | [._-] | ' ')+
;

// Skippable tokens

WS:
   [\t\r\n]+ -> skip
;

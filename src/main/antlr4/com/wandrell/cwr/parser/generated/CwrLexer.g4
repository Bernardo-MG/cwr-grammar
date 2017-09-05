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
   'HDR'
;

TRL
:
   'TRL'
;

GRH
:
   'GRH'
;

GRT
:
   'GRT'
;

ACK
:
   'ACK'
;

ALT
:
   'ALT'
;

AGR
:
   'AGR'
;

ARI
:
   'ARI'
;

COM
:
   'COM'
;

EWT
:
   'EWT'
;

IND
:
   'IND'
;

INS
:
   'INS'
;

IPA
:
   'IPA'
;

ISQ
:
   'ISQ'
;

PER
:
   'PER'
;

MSG
:
   'MSG'
;

NAT
:
   'NAT'
;

NCT
:
   'NCT'
;

NET
:
   'NET'
;

NOW
:
   'NOW'
;

NPA
:
   'NPA'
;

NPN
:
   'NPN'
;

NPR
:
   'NPR'
;

NVT
:
   'NVT'
;

NWN
:
   'NWN'
;

NWR
:
   'NWR'
;

OPU
:
   'OPU'
;

ORN
:
   'ORN'
;

OWR
:
   'OWR'
;

REC
:
   'REC'
;

REV
:
   'REV'
;

SPT
:
   'SPT'
;

SPU
:
   'SPU'
;

SWR
:
   'SWR'
;

SWT
:
   'SWT'
;

TER
:
   'TER'
;

VER
:
   'VER'
;

/**
 * Tokens.
 */

WORD
:
   ([A-Z] | [0-9] | [._-] | ' ')+
;

NEWLINE:
   '\n'
;

// Skippable tokens

WS:
   [\t\r\n]+ -> skip
;

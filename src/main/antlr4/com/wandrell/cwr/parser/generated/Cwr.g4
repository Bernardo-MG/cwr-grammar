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
 * Dice notation grammar.
 * 
 * This is the notation which RPGs and other tabletop games use to represent operations with dice.
 */
grammar Cwr;

options { tokenVocab=CwrLexer; }

/**
 * Rules.
 */
 
parse
:
   cwr_file
;
 
cwr_file
:
	transmission_header group_info+ transmission_trailer
;

group_info
:
	group_header transaction_info+ group_trailer
;

transaction_info
:
   agr
   | nwr
   | rev
   | isq
   | ack
;

agr
:
   agr_transaction_record territory_information+
;

ack
:
   ack_transaction_record msg*
;

nwr
:
   nwr_transaction_record controlled_publisher_info* other_publisher* controlled_writer_information* other_writer* alternate_title* non_roman_alphabet_title? information_for_excerpts? information_for_versions? performing_artist* performing_artist_in_non_roman_alphabet* recording_information? work_origin? instrumentation_information* information_for_components* additional_related_information*
;

controlled_publisher_information
:
   original_publisher_information administrator_information* subpublisher_information* income_participant_publisher*
;

original_publisher_information
:
   (original_publisher | income_participant_publisher) non_roman_alphabet_publisher_name? publisher_territory_of_control* Publisher_for_Writer+
;

instrumentation_information
:
   instrumentation_summary instrumentation_detail*
;

information_for_excerpts
:
   entire_work_title_for_excerpts non_roman_alphabet_title_for_excerpts? non_roman_alphabet_other_writer_name*
;

information_for_versions
:
   original_work_title_for_versions non_roman_alphabet_original_title_for_versions? non_roman_alphabet_other_writer_name*
;

information_for_components
:
   component non_roman_alphabet_title_for_components? non_roman_alphabet_other_writer_name*
;

administrator_information
:
   administrator non_roman_alphabet_publisher_name? publisher_territory_of_control
;

subpublisher_information
:
   subpublisher non_roman_alphabet_publisher_name? publisher_territory_of_control
;

controlled_writer_information
:
   (controlled_writer | income_participant_writer) non_roman_alphabet_writer_name? writer_territory_of_control+
;

territory_information
:
   ter+ assignor+ acquirer+
;

assignor
:
   ipa npa?
;

acquirer
:
   ipa npa?
;

/**
* Rows.
*/

transmission_header
:
   WORD
;

transmission_trailer
:
   WORD
;

group_header
:
   WORD
;

group_trailer
:
   WORD
;

agr_transaction_record
:
   WORD
;

ack_transaction_record
:
   WORD
;

msg
:
   WORD
;

additional_related_information
:
   WORD
;

performing_artist
:
   WORD
;

performing_artist_in_non_roman_alphabet
:
   WORD
;

recording_information
:
   WORD
;

work_origin
:
   WORD
;

other_publisher
:
   WORD
;

other_writer
:
   WORD
;

alternate_title
:
   WORD
;

non_roman_alphabet_title
:
   WORD
;

nwr_transaction_record
:
   WORD
;

controlled_publisher_info
:
   WORD
;

income_participant_publisher
:
   WORD
;

publisher_territory_of_control
:
   WORD
;

original_publisher
:
   WORD
;

non_roman_alphabet_publisher_name
:
   WORD
;

instrumentation_summary
:
   WORD
;

instrumentation_detail
:
   WORD
;

non_roman_alphabet_title_for_excerpts
:
   WORD
;

entire_work_title_for_excerpts
:
   WORD
;

original_work_title_for_versions
:
   WORD
;

non_roman_alphabet_original_title_for_versions
:
   WORD
;

component
:
   WORD
;

non_roman_alphabet_title_for_components
:
   WORD
;

non_roman_alphabet_other_writer_name
:
   WORD
;

administrator
:
   WORD
;

subpublisher
:
   WORD
;

writer_territory_of_control
:
   WORD
;

controlled_writer
:
   WORD
;

income_participant_writer
:
   WORD
;

non_roman_alphabet_writer_name
:
   WORD
;

ter
:
   WORD
;

ipa
:
   WORD
;

npa
:
   WORD
;

rev
:
   WORD
;

isq
:
   WORD
;

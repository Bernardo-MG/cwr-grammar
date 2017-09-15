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
	transmission_header cwr_group+ transmission_trailer
;

cwr_group
:
	group_header cwr_transaction+ group_trailer
;

cwr_transaction
:
   agreement_transaction
   | new_work_registration_transaction
   | revised_registration_record
   | notification_of_iswc_assign_record
   | acknowledge_transaction
;

/**
* Transactions.
*/

agreement_transaction
:
   agreement_record territory_recordritory_information_transaction+
;

acknowledge_transaction
:
   acknowledge_record message_record* ( agreement_record | (new_work_registration_record work_conflict_record?) | (revised_registration_record work_conflict_record?) )
;

new_work_registration_transaction
:
   new_work_registration_record controlled_publisher_information_transaction* other_publisher_record* controlled_writer_record_information_transaction* other_writer_record* alternate_title_record* non_roman_alphabet_title_record? information_for_excerpts_transaction? information_for_versions_transaction? performing_artist_record* performing_artist_in_non_roman_alphabet_record* recording_information_record? work_origin_record? instrumentation_information_transaction* information_for_component_records_transaction* additional_related_information_record*
;

controlled_publisher_information_transaction
:
   original_publisher_information_transaction publisher_information_transaction* controlled_publisher_information_record*
;

instrumentation_information_transaction
:
   instrumentation_summary_record instrumentation_detail_record*
;

information_for_excerpts_transaction
:
   entire_work_title_for_excerpts_record non_roman_alphabet_title_record_for_excerpts_record? non_roman_alphabet_other_writer_name_record*
;

information_for_versions_transaction
:
   original_work_title_for_versions_record non_roman_alphabet_original_title_for_versions_record? non_roman_alphabet_other_writer_name_record*
;

information_for_component_records_transaction
:
   component_record non_roman_alphabet_title_for_components_record? non_roman_alphabet_other_writer_name_record*
;

original_publisher_information_transaction
:
   controlled_publisher_information_record non_roman_alphabet_publisher_name_record? publisher_territory_of_control_record*
;

publisher_information_transaction
:
   original_publisher_information_transaction non_roman_alphabet_publisher_name_record? publisher_territory_of_control_record
;

controlled_writer_record_information_transaction
:
   controlled_writer_record non_roman_alphabet_writer_record? writer_territory_of_control_record+ publisher_for_writer_record+
;

territory_recordritory_information_transaction
:
   territory_record+ interested_party_of_agreement_transaction+
;

interested_party_of_agreement_transaction
:
   interested_party_of_agreement_record non_roman_alphabet_agreement_party_name_record?
;

/**
* Structure records.
*/

transmission_header
:
   HDR
;

transmission_trailer
:
   TRL
;

group_header
:
   GRH
;

group_trailer
:
   GRT
;

/**
* Transaction records.
*/

agreement_record
:
   AGR
;

acknowledge_record
:
   ACK
;

message_record
:
   MSG
;

additional_related_information_record
:
   ARI
;

performing_artist_record
:
   PER
;

performing_artist_in_non_roman_alphabet_record
:
   NPR
;

recording_information_record
:
   REC
;

work_origin_record
:
   ORN
;

other_publisher_record
:
   OPU
;

other_writer_record
:
   OWR
;

alternate_title_record
:
   ALT
;

non_roman_alphabet_title_record
:
   NAT
;

new_work_registration_record
:
   NWR
;

work_conflict_record
:
   EXC
;

controlled_publisher_information_record
:
   SPU
;

publisher_territory_of_control_record
:
   SPT
;

publisher_for_writer_record
:
   PWR
;

non_roman_alphabet_publisher_name_record
:
   NPN
;

instrumentation_summary_record
:
   INS
;

instrumentation_detail_record
:
   IND
;

non_roman_alphabet_title_record_for_excerpts_record
:
   NET
;

entire_work_title_for_excerpts_record
:
   EWT
;

original_work_title_for_versions_record
:
   VER
;

non_roman_alphabet_original_title_for_versions_record
:
   NVT
;

component_record
:
   COM
;

non_roman_alphabet_title_for_components_record
:
   NCT
;

non_roman_alphabet_other_writer_name_record
:
   NOW
;

writer_territory_of_control_record
:
   SWT
;

controlled_writer_record
:
   SWR
;

non_roman_alphabet_writer_record
:
   NWN
;

territory_record
:
   TER
;

interested_party_of_agreement_record
:
   IPA
;

non_roman_alphabet_agreement_party_name_record
:
   NPA
;

revised_registration_record
:
   REV
;

notification_of_iswc_assign_record
:
   ISW
;

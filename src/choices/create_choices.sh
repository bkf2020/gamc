#!/bin/sh

BASE=https://artofproblemsolving.com/wiki/index.php

# CLEAN Files

for TEST in aime amc8 amc10 amc10; do
	for FILE in easy medium hard veryhard; do
		rm $TEST/$FILE
		touch $TEST/$FILE
	done
done

# AIME
for YEAR in $(seq 2015 2021); do
	for TEST_TYPE in I II; do
		for PROBLEM in $(seq 5); do
			echo -n "${BASE}/${YEAR}_AIME_${TEST_TYPE}_Problems#Problem_${PROBLEM}," >> aime/easy
			echo -n "answers/aime/${YEAR}/${TEST_TYPE}/answers.txt," >> aime/easy
			echo "${YEAR} AIME ${TEST_TYPE} Problem #${PROBLEM}" >> aime/easy
		done

		for PROBLEM in $(seq 6 10); do
			echo -n "${BASE}/${YEAR}_AIME_${TEST_TYPE}_Problems#Problem_${PROBLEM}," >> aime/medium
			echo -n "answers/aime/${YEAR}/${TEST_TYPE}/answers.txt," >> aime/medium
			echo "${YEAR} AIME ${TEST_TYPE} Problem #${PROBLEM}" >> aime/medium
		done

		for PROBLEM in $(seq 11 13); do
			echo -n "${BASE}/${YEAR}_AIME_${TEST_TYPE}_Problems#Problem_${PROBLEM}," >> aime/hard
			echo -n "answers/aime/${YEAR}/${TEST_TYPE}/answers.txt," >> aime/hard
			echo "${YEAR} AIME ${TEST_TYPE} Problem #${PROBLEM}" >> aime/hard
		done

		for PROBLEM in $(seq 14 15); do
			echo -n "${BASE}/${YEAR}_AIME_${TEST_TYPE}_Problems#Problem_${PROBLEM}," >> aime/veryhard
			echo -n "answers/aime/${YEAR}/${TEST_TYPE}/answers.txt," >> aime/veryhard
			echo "${YEAR} AIME ${TEST_TYPE} Problem #${PROBLEM}" >> aime/veryhard
		done
	done
done

for YEAR in $(seq 2014 2020); do
	for PROBLEM in $(seq 15); do
		echo -n "${BASE}/${YEAR}_AMC_8_Problems#Problem_${PROBLEM}," >> amc8/easy
		echo -n "answers/amc8/${YEAR}/answers.txt," >> amc8/easy
		echo "${YEAR} AMC 8 Problem #${PROBLEM}" >> amc8/easy
	done

	for PROBLEM in $(seq 16 18); do
		echo -n "${BASE}/${YEAR}_AMC_8_Problems#Problem_${PROBLEM}," >> amc8/medium
		echo -n "answers/amc8/${YEAR}/answers.txt," >> amc8/medium
		echo "${YEAR} AMC 8 Problem #${PROBLEM}" >> amc8/medium
	done

	for PROBLEM in $(seq 19 22); do
		echo -n "${BASE}/${YEAR}_AMC_8_Problems#Problem_${PROBLEM}," >> amc8/hard
		echo -n "answers/amc8/${YEAR}/answers.txt," >> amc8/hard
		echo "${YEAR} AMC 8 Problem #${PROBLEM}" >> amc8/hard
	done

	for PROBLEM in $(seq 23 25); do
		echo -n "${BASE}/${YEAR}_AMC_8_Problems#Problem_${PROBLEM}," >> amc8/veryhard
		echo -n "answers/amc8/${YEAR}/answers.txt," >> amc8/veryhard
		echo "${YEAR} AMC 8 Problem #${PROBLEM}" >> amc8/veryhard
	done
done

# AMC 10
for YEAR in $(seq 2015 2021); do
	for TEST_TYPE in A B; do
		for PROBLEM in $(seq 15); do
			echo -n "${BASE}/${YEAR}_AMC_10${TEST_TYPE}_Problems#Problem_${PROBLEM}," >> amc10/easy
			echo -n "answers/amc10/${TEST_TYPE}/answers.txt," >> amc10/easy
			echo "${YEAR} AMC 10${TEST_TYPE} Problem #${PROBLEM}" >> amc10/easy
		done

		for PROBLEM in 16 17 18; do
			echo -n "${BASE}/${YEAR}_AMC_10${TEST_TYPE}_Problems#Problem_${PROBLEM}," >> amc10/medium
			echo -n "answers/amc10/${TEST_TYPE}/answers.txt," >> amc10/medium
			echo "${YEAR} AMC 10${TEST_TYPE} Problem #${PROBLEM}" >> amc10/medium
		done

		for PROBLEM in 19 20 21 22; do
			echo -n "${BASE}/${YEAR}_AMC_10${TEST_TYPE}_Problems#Problem_${PROBLEM}," >> amc10/hard
			echo -n "answers/amc10/${TEST_TYPE}/answers.txt," >> amc10/hard
			echo "${YEAR} AMC 10${TEST_TYPE} Problem #${PROBLEM}" >> amc10/hard
		done

		for PROBLEM in 23 24 25; do
			echo -n "${BASE}/${YEAR}_AMC_10${TEST_TYPE}_Problems#Problem_${PROBLEM}," >> amc10/veryhard
			echo -n "answers/amc10/${TEST_TYPE}/answers.txt," >> amc10/veryhard
			echo "${YEAR} AMC 10${TEST_TYPE} Problem #${PROBLEM}" >> amc10/veryhard
		done
	done
done

#AMC 12
for YEAR in $(seq 2015 2021); do
	for TEST_TYPE in A B; do
		for PROBLEM in $(seq 15); do
			echo -n "${BASE}/${YEAR}_AMC_12${TEST_TYPE}_Problems#Problem_${PROBLEM}," >> amc12/easy
			echo -n "answers/amc12/${TEST_TYPE}/answers.txt," >> amc12/easy
			echo "${YEAR} AMC 12${TEST_TYPE} Problem #${PROBLEM}" >> amc12/easy
		done

		for PROBLEM in $(seq 16 18); do
			echo -n "${BASE}/${YEAR}_AMC_12${TEST_TYPE}_Problems#Problem_${PROBLEM}," >> amc12/medium
			echo -n "answers/amc12/${TEST_TYPE}/answers.txt," >> amc12/medium
			echo "${YEAR} AMC 12${TEST_TYPE} Problem #${PROBLEM}" >> amc12/medium
		done

		for PROBLEM in $(seq 19 22); do
			echo -n "${BASE}/${YEAR}_AMC_12${TEST_TYPE}_Problems#Problem_${PROBLEM}," >> amc12/hard
			echo -n "answers/amc12/${TEST_TYPE}/answers.txt," >> amc12/hard
			echo "${YEAR} AMC 12${TEST_TYPE} Problem #${PROBLEM}" >> amc12/hard
		done

		for PROBLEM in $(seq 23 25); do
			echo -n "${BASE}/${YEAR}_AMC_12${TEST_TYPE}_Problems#Problem_${PROBLEM}," >> amc12/veryhard
			echo -n "answers/amc12/${TEST_TYPE}/answers.txt," >> amc12/veryhard
			echo "${YEAR} AMC 12${TEST_TYPE} Problem #${PROBLEM}" >> amc12/veryhard
		done
	done
done

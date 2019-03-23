package arrays;

import java.util.Arrays;

/**
 * @author dkravchenko
 */

public class PrintInSpiralOrder {

/*
Given a matrix of m * n elements (m rows, n columns), return all elements of the matrix in spiral order.

Example:

Given the following matrix:

        [
        [ 1, 2, 3 ],
        [ 4, 5, 6 ],
        [ 7, 8, 9 ]
        ]
You should return

        [1, 2, 3, 6, 9, 8, 7, 4, 5]
*/

    public static int[] spiralOrder(final int[][] A) {
        int n = A.length;
        int m = A[0].length;
        int[] arr = new int[n * m];
        int idx = 0;
        int top = 0;
        int bottom = n - 1;
        int left = 0;
        int right = m - 1;
        int direction = 0;

        while ((top <= bottom) && (left <= right)) {
            if (direction == 0) { //from left to right
                for (int i = left; i <= right; i++, idx++) {
                    arr[idx] = A[top][i];
                }
                top++;
                direction = 1;
            } else if (direction == 1) { // from top to bottom
                for (int i = top; i <= bottom; i++, idx++) {
                    arr[idx] = A[i][right];
                }
                right--;
                direction = 2;
            } else if (direction == 2) { // from right to left
                for (int i = right; i >= left; i--, idx++) {
                    arr[idx] = A[bottom][i];
                }
                bottom--;
                direction = 3;
            } else if (direction == 3) { // from bottom to top
                for (int i = bottom; i >= top; i--, idx++) {
                    arr[idx] = A[i][left];
                }
                left++;
                direction = 0;
            }
        }
        return arr;
    }

    public static void main(String[] args) {
        System.out.println("Print 2D array in spiral order");
        int[][] testArray = new int[][] {
            {1,  2,  3,  4,  5},
            {6,  7,  8,  9,  10},
            {11, 12, 13, 14, 15},
            {16, 17, 18, 19, 20},
            {21, 22, 23, 24, 25}
        };
        System.out.println("Input array:");
        System.out.println(Arrays.deepToString(testArray));

        int[] result = PrintInSpiralOrder.spiralOrder(testArray);
        System.out.println("Result:");
        System.out.println(Arrays.toString(result));

    }
}
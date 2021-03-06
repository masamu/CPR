!!$ THINK FLOW:
!!$ - TRANSFORM F(X) INTO A "CHEBYSHEV'S VECTOR"
!!$ - CONSTRUCT A "COMPANION MATRIX"
!!$ - SOLVE EIGENVALUES OF THIS MATRIX
!!$ - REFINE(?)

PROGRAM CPR
  USE CHEBYINTER
  IMPLICIT NONE

  REAL(KIND=8) :: A = -1.0_DP, B = 1.0_DP

  INTEGER :: I1

  CALL INTERPOLATE(A, B, G)

CONTAINS

  FUNCTION G(X) RESULT(J)
    REAL(KIND=DP) :: J
    REAL(KIND=DP), INTENT(IN) :: X

    J = SIN(X)*COS(2.0_DP*X)

    RETURN

  END FUNCTION G

END PROGRAM CPR

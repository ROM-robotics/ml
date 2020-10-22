import numpy as np
import cv2 as cv

img = cv.imread('')
grey= cv.cvtColor(img,cv.COLOR_BGR2GRAY)

cv.imshow('shapes', img)
cv.waitKey(0)
cv.destroyAllWindows()
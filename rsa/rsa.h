/**
 * @file   rsa.h
 * @Author Auzias (mael@auzias.net)
 * @date   May, 2014
 * @brief  Header file of a simple RSA implementation in C
 *
 * This file contains all the include needed and the function definitions
 * of a simple RSA implementation in C.
 */
#ifndef RSA_H
#define RSA_H

  #include <stdio.h>
  #include <stdint.h>

  typedef struct {
    int x;
  } key;

  int key_generation(key *k);


#endif
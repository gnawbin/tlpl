/*v
 * decision_tree_jni.h
 *
 *  Created on: 2019年9月23日
 *      Author: wangbin
 */

#ifndef DECISION_TREE_JNI_H_
#define DECISION_TREE_JNI_H_
#include "decision_tree.h"
#include <jni.h>

#ifdef __cplusplus
extern "C"{
#endif
JNIEXPORT void JNICALL Java_com_imooc_jni_deisiontree_DecisionTreeTest_train(JNIEnv *, jobject, jintArray,jint,jint,jstring);

#ifdef __cplusplus
}
#endif





#endif /* DECISION_TREE_JNI_H_ */

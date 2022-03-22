//=============================================================================
//
// �r���{�[�h���� [billboard.h]
// Author : NARUMI KOUKI
//
//=============================================================================
#ifndef _BILLBOARD_H_
#define _BILLBOARD_H_

#include "main.h"

typedef enum
{
	NULLTEXTURE = 0,
	TEXTURE_Audience,			//Type1
	TEXTURE_ElectricBulletin,	//Type2
	BILLBOARD_TEXTURE_MAX
}E_BILLBOARD;

typedef struct
{
	D3DXVECTOR3 pos;		//�r���{�[�h�̍��W
	D3DXVECTOR2 size;		//�r���{�[�h�̃T�C�Y
	D3DXMATRIX mtxWorld;	//�}�g���b�N�X���[���h
	E_BILLBOARD nType;	//�g�p����e�N�X�`��
	bool bUse;				//�g�p���Ă��邩�ǂ���
	int IdxShadow;			//�e�̐ݒu�Ɏg���ϐ�
}Billboard;

//�v���g�^�C�v�錾
void InitBillboard(void);
void UninitBillboard(void);
void UpdataBillboard(void);
void DrawBillboard(void);
void SetBillboard(D3DXVECTOR3 pos, D3DXVECTOR2 size, E_BILLBOARD nType, char *FileName);
void InputBillboard(void);
//E_BILLBOARD texture		//������C�ɂ��Ȃ���

#endif
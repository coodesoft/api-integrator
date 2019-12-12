<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "coode_order".
 *
 * @property string $uid
 * @property int $store
 * @property string $status
 *
 * @property CoodeStore $store0
 */
class Order extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'coode_order';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['uid', 'store', 'status'], 'required'],
            [['store'], 'integer'],
            [['uid'], 'string', 'max' => 100],
            [['status'], 'string', 'max' => 50],
            [['uid'], 'unique'],
            [['store'], 'exist', 'skipOnError' => true, 'targetClass' => CoodeStore::className(), 'targetAttribute' => ['store' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'uid' => 'Uid',
            'store' => 'Store',
            'status' => 'Status',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getStore()
    {
        return $this->hasOne(CoodeStore::className(), ['id' => 'store'])->inverseOf('orders');
    }
}

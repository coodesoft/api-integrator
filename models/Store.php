<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "coode_store".
 *
 * @property int $id
 * @property string $uid
 *
 * @property CoodeOrder[] $coodeOrders
 */
class Store extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'coode_store';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'uid'], 'required'],
            [['id'], 'integer'],
            [['uid'], 'string', 'max' => 200],
            [['id'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'uid' => 'Uid',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getOrders()
    {
        return $this->hasMany(CoodeOrder::className(), ['store' => 'id'])->inverseOf('store');
    }
}

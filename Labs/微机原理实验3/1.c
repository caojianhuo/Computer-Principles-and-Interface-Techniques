��дUART��س���
1.��ʼ������

#define	HAL_TIMEOUT_VALUE 0xFFFFFFFF
#define	countof(a) (sizeof(a)/sizeof(*(a)))

UART_HandleTypeDef UartHandle;
uint8_t RxBuffer[1];

void HAL_UART_MspInit(UART_HandleTypeDef *huart){
	
}

2.�����������д





��ʱ��
���ö�ʱ�����LED������˸

1.������ʱ������Ͷ�ʱ����ʼ������





2.��ʼ����ʱ���ж���غ���




 ���� PWM ��ɺ�����ʵ��
 1.������ʱ������Ͷ�ʱ��2ͨ��4�����ע�����Ƕ���ȫ�ֵĽṹ��
 
 
 
 
 2.��д��ʼ��TIM2��PWM����
 
 
 
 
 3.��д��ʱ���ײ�����
 
 
 
 
 4.����TIMͨ��4��ռ�ձȺ���



ADCʵ��
1.��ʼ��ADC
void MY_ADC_Init(void){
	ADC3_Handle.Instance=ADC3;
	ADC3_Handle.Init.ClockPrescaler=ADC_CLOCK_SYNC_PCLK_DIV4;
	ADC3_Handle.Init.Resolution=ADC_RESOLUTION_16B;
	ADC3_Handle.Init.ScanConvMode=DISABLE;
	ADC3_Handle.Init.EOCSelection=ADC_EOC_SINGLE_CONV;
	ADC3_Handle.Init.LowPowerAutoWait=DISABLE;
	ADC3_Handle.Init.ContinuousConvMode=DISABLE;
	ADC3_Handle.Init.NbrOfConversion=1;
	ADC3_Handle.Init.DiscontinuousCOnvMode=DISABLE;
}



2.��дADC�ײ�����



3.��ȡADCֵ


4.��ȡָ��ͨ����ת��ֵ��ȡtimes��Ȼ��ƽ��
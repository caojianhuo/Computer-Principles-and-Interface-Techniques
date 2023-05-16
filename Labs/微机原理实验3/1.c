编写UART相关程序
1.初始化串口

#define	HAL_TIMEOUT_VALUE 0xFFFFFFFF
#define	countof(a) (sizeof(a)/sizeof(*(a)))

UART_HandleTypeDef UartHandle;
uint8_t RxBuffer[1];

void HAL_UART_MspInit(UART_HandleTypeDef *huart){
	
}

2.主函数程序编写





定时器
利用定时器完成LED周期闪烁

1.创建定时器句柄和定时器初始化函数





2.初始化定时器中断相关函数




 利用 PWM 完成呼吸灯实验
 1.创建定时器句柄和定时器2通道4句柄，注意他们都是全局的结构体
 
 
 
 
 2.编写初始化TIM2的PWM函数
 
 
 
 
 3.编写定时器底层驱动
 
 
 
 
 4.设置TIM通道4的占空比函数



ADC实验
1.初始化ADC
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



2.编写ADC底层驱动



3.获取ADC值


4.获取指定通道的转换值，取times次然后平均
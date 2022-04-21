@import Foundation;

//Accepts one boolean: Show Model Identifier, or show user-readable name (ex. MacBookPro4,1 vs MacBook Pro)
NSString *ASI_CopyComputerModelName(bool modelID);

//Does not accept any values
NSString *ASI_CopyFormattedSerialNumber();

/*Accepts on int:
0x2: Upgradable RAM

Certainly more, cannot get any output though
*/

NSString *ASI_IsPlatformFeatureEnabled(int arg0);

//Does not accept any values
int ASI_BusSpeedInHz();

//Accepts one int, no clue what it does
NSString *ASI_CopyBusSpeedDescription(int arg0);

//Does not accept any values
NSString *ASI_CopyCurrentBusSpeedDescription();

//Does not accept any values
NSString *ASI_CopyCurrentCPUDescription();

//Does not accept any values
int ASI_NumberOfCPUs();

//Does not accept any values, cannot get to function
int ASI_CPUSpeedInHz();

//what does this even do (hopper timed out, couldn't disassemble it. third value does *something*)
NSString *ASI_CopyCPUDescription(int idk,int idk2, int idk3);

//looks to accept one int, not sure what it does though
NSString *ASI_CopyCPUKind();

//accepts 5 values, no clue what they do
NSString *ASI_GetCurrentCPUDescriptionWithFormat();

//accepts 3 values, no clue what they do - seems to needs values to work
NSString *ASI_GetLocalizedCPUDescriptionForCPUDescription();

//Does not accept any values
NSString *ASI_GetComputerUniqueIdentfier(); //lol apple misspelled

//Does not accept any values
NSString *ASI_CopyCurrentRAMDescriptionWithType();

//Does not accept any values
NSString *ASI_CopyCurrentRAMDescription();

//accepts one int, bit shifts >> 14
NSString *ASI_CopyRAMDescription(int bitShiftInt);

//Does not accept any values, cannot get to function
int ASI_PhysicalMemorySize();

//Does not accept any values
BOOL ASI_PhysicalMemoryIsUpgradable();

//accepts one int, converts from bytes to bigger values (eg. MB/GB/TB/PB)
NSString *ASI_CopyDiskSizeDescription(int starValue);

//Does not accept any values, pretty much identical to ASI_CopyFormattedSerialNumber
NSString *ASI_CopyIOPlatformSerialNumberString();

//Does not accept any values
NSString *ASI_CopyMachineConfigurationCode();

//Does not accept any values
NSString *ASI_CopyHostUUID();


/*NSString *ASI_Copy();
NSString *ASI_Copy();
NSString *ASI_Copy();
*/

int main(){
	NSLog(@"Model: %@", ASI_CopyComputerModelName(true));
	NSLog(@"Serial Number: %@", ASI_CopyFormattedSerialNumber());
	//NSLog(@"Is Platform Feature Enabled: %@",ASI_IsPlatformFeatureEnabled());
	NSLog(@"Bus Speed (Hz): %d", ASI_BusSpeedInHz());
	//NSLog(@"Bus Speed Description: %@",ASI_CopyBusSpeedDescription());
	NSLog(@"Current Bus Speed Description: %@",ASI_CopyCurrentBusSpeedDescription());
	NSLog(@"Current CPU Description: %@",ASI_CopyCurrentCPUDescription());
	NSLog(@"Number of CPUs: %d", ASI_NumberOfCPUs());
	//NSLog(@"CPU Speed (Hz): %d",ASI_CPUSpeedInHz());
	//NSLog(@"CPU Description: %@", ASI_CopyCPUDescription(0,1,2));	
	NSLog(@"CPU Kind: %@",ASI_CopyCPUKind());
	NSLog(@"Current CPU Description With Format: %@",ASI_GetCurrentCPUDescriptionWithFormat());	
	//NSLog(@"Current CPU Description With Format (localized): %@",ASI_GetLocalizedCPUDescriptionForCPUDescription());
	NSLog(@"Board ID: %@",ASI_GetComputerUniqueIdentfier());	
	NSLog(@"RAM Type With Description: %@", ASI_CopyCurrentRAMDescriptionWithType());
	NSLog(@"RAM Type: %@",ASI_CopyCurrentRAMDescription());
	//NSLog(@"RAM Description: %@",ASI_CopyRAMDescription(999999));
	//NSLog(@"Physical Memory Size: %d",ASI_PhysicalMemorySize());
	NSLog(@"Is Memory Upgradable: %d", ASI_PhysicalMemoryIsUpgradable());
	//NSLog(@"Disk Size Description: %@",ASI_CopyDiskSizeDescription(1024000));
	//NSLog(@"IOPlatform Serial Number: %@",ASI_CopyIOPlatformSerialNumberString());  functions, but provides same info as ASI_CopyFormattedSerialNumber
	NSLog(@"Machine Configuration Code: %@",ASI_CopyMachineConfigurationCode());
	NSLog(@"Host UUID: %@",ASI_CopyHostUUID());
	
}

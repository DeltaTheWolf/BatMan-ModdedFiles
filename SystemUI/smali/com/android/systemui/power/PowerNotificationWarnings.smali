.class public Lcom/android/systemui/power/PowerNotificationWarnings;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Lcom/android/systemui/power/PowerUI$WarningsUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerNotificationWarnings$1;,
        Lcom/android/systemui/power/PowerNotificationWarnings$2;,
        Lcom/android/systemui/power/PowerNotificationWarnings$3;,
        Lcom/android/systemui/power/PowerNotificationWarnings$4;,
        Lcom/android/systemui/power/PowerNotificationWarnings$5;,
        Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;
    }
.end annotation


# static fields
.field private static final AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final DEBUG:Z

.field private static final SHOWING_STRINGS:[Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryHealth:I

.field private mBatteryHealthInterruptionDialog:Landroid/app/AlertDialog;

.field mBatteryHealthInterruptionTask:Ljava/lang/Runnable;

.field private mBatteryLevel:I

.field private mBatterySaverRecommend:Z

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryStatus:I

.field private mBucket:I

.field private mBucketDroppedNegativeTimeMs:J

.field private mChargingTime:J

.field private mChargingType:I

.field private mConnectedChargerChangedToast:Landroid/widget/Toast;

.field private final mContext:Landroid/content/Context;

.field private mCurrentBatteryMode:I

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDismissedBatteryHealthInterruptionDialog:Z

.field private mDismissedIncompatibleChargerDialog:Z

.field private mDismissedOverheatNoticeDialog:Z

.field private mDismissedOverheatShutdownHappenedDialog:Z

.field private mDismissedPowerSharingAlertDialog:Z

.field private mDismissedPowerSupplyingInLowBatteryNoticeDialog:Z

.field private mDismissedSafeModeDialog:Z

.field private mDismissedSlowByChargerConnectionInfoDialog:Z

.field private mDismissedWaterProtectionAlertDialog:Z

.field private mFTAMode:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIncompatibleChargerDialog:Landroid/app/AlertDialog;

.field private mInvalidCharger:Z

.field private mIsWaterDetected:Z

.field private final mNoMan:Landroid/app/NotificationManager;

.field private mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

.field private mOldBatteryLevel:I

.field private final mOpenBatterySettings:Landroid/content/Intent;

.field private final mOpenBatterySmartManagerSettings:Landroid/content/Intent;

.field private final mOpenLowBatterySmartManagerSettings:Landroid/content/Intent;

.field private final mOpenSaverDetail:Landroid/content/Intent;

.field private mOverheatNoticeDialog:Landroid/app/AlertDialog;

.field private mOverheatShutdownHappenedDialog:Landroid/app/AlertDialog;

.field mOverheatShutdownTask:Ljava/lang/Runnable;

.field private mPlaySound:Z

.field private final mPowerMan:Landroid/os/PowerManager;

.field mPowerSharingAlertDialog:Landroid/app/AlertDialog;

.field private mPowerSupplyingInLowBatteryNoticeDialog:Landroid/app/AlertDialog;

.field private final mPowersavingObserver:Landroid/database/ContentObserver;

.field private final mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

.field private mSafeModeDialog:Landroid/app/AlertDialog;

.field private mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field private mScreenOffTime:J

.field private mShowChargingNotice:Z

.field private mShowing:I

.field private mSlowByChargerConnectionInfoDialog:Landroid/app/AlertDialog;

.field private mSlowChargerToast:Landroid/widget/Toast;

.field private final mSmartManagerBatterySettings:Landroid/content/Intent;

.field private final mStartSaverMode:Landroid/content/DialogInterface$OnClickListener;

.field private mUnintentionalLcdOnAlertDialog:Landroid/app/AlertDialog;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWarning:Z

.field private mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

.field mWaterProtectionAlertTask:Ljava/lang/Runnable;

.field private mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWillOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

.field private mWirelessChargerDisconnectToast:Landroid/widget/Toast;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/power/PowerNotificationWarnings;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStatus:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/power/PowerNotificationWarnings;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/power/PowerNotificationWarnings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedSafeModeDialog:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/power/PowerNotificationWarnings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedSlowByChargerConnectionInfoDialog:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/power/PowerNotificationWarnings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedWaterProtectionAlertDialog:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/power/PowerNotificationWarnings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIsWaterDetected:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenLowBatterySmartManagerSettings:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/power/PowerNotificationWarnings;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/power/PowerNotificationWarnings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedBatteryHealthInterruptionDialog:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/power/PowerNotificationWarnings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedIncompatibleChargerDialog:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/power/PowerNotificationWarnings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedOverheatNoticeDialog:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/power/PowerNotificationWarnings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedOverheatShutdownHappenedDialog:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/power/PowerNotificationWarnings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedPowerSharingAlertDialog:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/power/PowerNotificationWarnings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedPowerSupplyingInLowBatteryNoticeDialog:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedSlowByChargerConnectionInfoDialog:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedWaterProtectionAlertDialog:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFTAMode:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleChargerDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set14(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatNoticeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set15(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set16(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerSupplyingInLowBatteryNoticeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set17(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSafeModeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set18(Lcom/android/systemui/power/PowerNotificationWarnings;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object p1
.end method

.method static synthetic -set19(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/power/PowerNotificationWarnings;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    return p1
.end method

.method static synthetic -set20(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowChargerToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic -set21(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUnintentionalLcdOnAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set22(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set23(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic -set24(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic -set25(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerDisconnectToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedBatteryHealthInterruptionDialog:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedIncompatibleChargerDialog:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedOverheatNoticeDialog:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedOverheatShutdownHappenedDialog:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedPowerSharingAlertDialog:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedPowerSupplyingInLowBatteryNoticeDialog:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedSafeModeDialog:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryNotification()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissOverheatShutdownHappenedPopUp()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showSlowByChargerConnectionInfoPopUp()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showStartSaverConfirmation()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissPowerSavingNotification()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissWillOverheatShutdownPopUp()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->resetCurrentShowingDialog()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/power/PowerNotificationWarnings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->setSaverMode(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showIncompatibleChargerPopUpAndNotification()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showOverHeatPopUp()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showOverheatShutdownHappenedPopUp()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showSafeModePopUp()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x4

    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "SHOWING_NOTHING"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHOWING_WARNING"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHOWING_SAVER"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHOWING_INVALID_CHARGER"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/power/PowerNotificationWarnings;->SHOWING_STRINGS:[Ljava/lang/String;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/PowerNotificationWarnings;->AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    const-string/jumbo v1, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;

    iput v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStatus:I

    iput v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    const-string/jumbo v1, "com.samsung.android.sm.ACTION_BATTERY"

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSmartManagerBatterySettings:Landroid/content/Intent;

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowChargingNotice:Z

    iput v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    iput v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOldBatteryLevel:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    iput v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    const-string/jumbo v1, "com.samsung.android.sm.POWER_MODE_CHANGE"

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenSaverDetail:Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.sm.ACTION_BATTERY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySmartManagerSettings:Landroid/content/Intent;

    iput-boolean v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySaverRecommend:Z

    const-string/jumbo v1, "com.samsung.android.sm.ACTION_LOW_BATTERY"

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenLowBatterySmartManagerSettings:Landroid/content/Intent;

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedBatteryHealthInterruptionDialog:Z

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedOverheatNoticeDialog:Z

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedOverheatShutdownHappenedDialog:Z

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedSafeModeDialog:Z

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedIncompatibleChargerDialog:Z

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedSlowByChargerConnectionInfoDialog:Z

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedPowerSupplyingInLowBatteryNoticeDialog:Z

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedWaterProtectionAlertDialog:Z

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedPowerSharingAlertDialog:Z

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFTAMode:Z

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIsWaterDetected:Z

    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$1;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownTask:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$2;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionTask:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$3;

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings$3;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowersavingObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$4;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mStartSaverMode:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$5;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertTask:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerMan:Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    invoke-virtual {v1}, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->init()V

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowersavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    :goto_0
    const-string/jumbo v1, "desktopmode"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$6;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-static {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iput v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    goto :goto_0

    :cond_1
    iput v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    goto :goto_0
.end method

.method private addCloseSaverRecommendAction(Landroid/app/Notification$Builder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v1, 0x7f0f06ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.systemui.power.action.ACTION_BATTERY_CLOSE_SAVER_RECOMMEND"

    invoke-direct {p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private attachLowBatterySound(Landroid/app/Notification$Builder;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "low_battery_sound_timeout"

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScreenOffTime:J

    sub-long v2, v6, v8

    if-lez v1, :cond_0

    iget-wide v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScreenOffTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    int-to-long v6, v1

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    const-string/jumbo v6, "PowerUI.Notification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "screen off too long ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms, limit "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms): not waking up the user with low battery sound"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v6, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "PowerUI.Notification"

    const-string/jumbo v7, "playing low battery sound. pick-a-doop!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v6, "power_sounds_enabled"

    invoke-static {v0, v6, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_2

    const-string/jumbo v6, "low_battery_sound"

    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_2

    sget-object v6, Lcom/android/systemui/power/PowerNotificationWarnings;->AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    sget-boolean v6, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "PowerUI.Notification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "playing sound "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private dismissChargingNotification()V
    .locals 4

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissChargingNotification()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "charging_state"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v3, 0x7f130039

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private dismissFullBatteryNotification()V
    .locals 4

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissing full battery notification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "full_battery"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v3, 0x7f130039

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private dismissIncompatibleChargerNotification()V
    .locals 4

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissing incompatible charger notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "incompatible_charger_state"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v3, 0x7f130039

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private dismissInvalidChargerNotification()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissing invalid charger notification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    return-void
.end method

.method private dismissLowBatteryNotification()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissing low battery notification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    return-void
.end method

.method private dismissOverheatNotification()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "over_heat"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v3, 0x7f130039

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private dismissOverheatShutdownHappenedPopUp()V
    .locals 2

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissOverheatShutdownHappenedPopUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private dismissPowerSavingNotification()V
    .locals 4

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissing saver notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "battery_saver"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v3, 0x7f130039

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private dismissPowerSavingRecommendNotification()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySaverRecommend:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "battery_saver_recommend"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v3, 0x7f130039

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySaverRecommend:Z

    :cond_0
    return-void
.end method

.method private dismissPowerSupplyingInLowBatteryPopUp()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerSupplyingInLowBatteryNoticeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerSupplyingInLowBatteryNoticeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private dismissSlowByChargerConnectionInfoPopUp()V
    .locals 2

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissSlowByChargerConnectionInfoPopUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private dismissUnintentionalLcdOnPopUp()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUnintentionalLcdOnAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUnintentionalLcdOnAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private dismissWillOverheatShutdownPopUp()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private getChargeEstimateTime()J
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-nez v1, :cond_0

    const-string/jumbo v1, "batterystats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "Error calling IBatteryStats: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method private getFormattedTime(J)Ljava/lang/String;
    .locals 13

    const/16 v1, 0x3c

    const/16 v0, 0xe10

    const-wide/16 v8, 0x3e8

    div-long v6, p1, v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v8, 0xe10

    cmp-long v8, v6, v8

    if-ltz v8, :cond_0

    const-wide/16 v8, 0xe10

    div-long v8, v6, v8

    long-to-int v3, v8

    int-to-long v8, v3

    const-wide/16 v10, 0xe10

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    :cond_0
    const-wide/16 v8, 0x3c

    cmp-long v8, v6, v8

    if-ltz v8, :cond_1

    const-wide/16 v8, 0x3c

    div-long v8, v6, v8

    long-to-int v4, v8

    int-to-long v8, v4

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    :cond_1
    long-to-int v5, v6

    if-nez v3, :cond_2

    const/4 v8, 0x2

    if-lt v4, v8, :cond_2

    const/16 v8, 0x1e

    if-lt v5, v8, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    if-lez v3, :cond_3

    if-lez v4, :cond_3

    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const v10, 0x7f0f0030

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_3
    if-lez v3, :cond_4

    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f0f0031

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    if-lez v4, :cond_7

    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "el"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    if-ne v4, v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f0f0032

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x10400a3

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_6
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f0f0032

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_7
    const/4 v8, 0x1

    if-le v5, v8, :cond_8

    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x10400a7

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x10400a8

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private isPowerSharingApplicationInstalled()Z
    .locals 5

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, ""

    :try_start_0
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v3, :cond_0

    const-string/jumbo v2, "com.samsung.android.app.powersharing_tablet"

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    return v4

    :cond_0
    const-string/jumbo v2, "com.samsung.android.app.powersharing"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    return v3
.end method

.method private pendingActivity(Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x0

    move-object v2, p1

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v0, v3, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private playPowerStateSound(II)V
    .locals 8

    const/4 v7, 0x1

    const-string/jumbo v4, "PowerUI.Notification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "playPowerStateSound : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    if-ne v4, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    :try_start_0
    const-string/jumbo v4, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_0
    if-ne v7, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6, v0}, Lcom/android/systemui/media/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V

    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "RINGER_MODE_NORMAL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :pswitch_0
    const-string/jumbo v4, "system/media/audio/ui/Charger_Connection.ogg"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "low_battery_sound"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :pswitch_2
    const-string/jumbo v4, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :pswitch_3
    const-string/jumbo v4, "system/media/audio/ui/Water_Protection.ogg"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    goto :goto_1

    :cond_1
    if-ne v7, p2, :cond_3

    packed-switch p1, :pswitch_data_1

    const v2, 0xc36b

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    sget-object v5, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v6, v7, v5}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :goto_4
    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "RINGER_MODE_VIBRATE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string/jumbo v4, "PowerUI.Notification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "playPowerSound : Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_4
    const v2, 0xc378

    goto :goto_3

    :pswitch_5
    const v2, 0xc36f

    goto :goto_3

    :pswitch_6
    const v2, 0xc36d

    goto :goto_3

    :cond_2
    :try_start_1
    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "playPowerSound : Vibrator is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    if-nez p2, :cond_4

    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "RINGER_MODE_SILENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_4
    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "unknown RINGER_MODE"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private resetCurrentShowingDialog()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedBatteryHealthInterruptionDialog:Z

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissBatteryHealthInterruptionWarning()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatNoticeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedOverheatNoticeDialog:Z

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatNoticeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedOverheatShutdownHappenedDialog:Z

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissOverheatShutdownHappenedPopUp()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSafeModeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedSafeModeDialog:Z

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSafeModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleChargerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedIncompatibleChargerDialog:Z

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissIncompatibleChargerNotice()V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedSlowByChargerConnectionInfoDialog:Z

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissSlowByChargerConnectionInfoPopUp()V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerSupplyingInLowBatteryNoticeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedPowerSupplyingInLowBatteryNoticeDialog:Z

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissPowerSupplyingInLowBatteryPopUp()V

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedWaterProtectionAlertDialog:Z

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIsWaterDetected:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissWaterProtectionAlertDialog(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerSharingAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDismissedPowerSharingAlertDialog:Z

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerSharingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_8
    return-void
.end method

.method private setSaverMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerMan:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    return-void
.end method

.method private static settings(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1c800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private showBatteryHealthInterruptionPopUp()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-nez v2, :cond_0

    const-string/jumbo v3, "PowerUI.Notification"

    const-string/jumbo v4, "status is NotCharging but health is wrong value"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const v2, 0x7f0f06b1

    goto :goto_0

    :pswitch_2
    const v2, 0x7f0f06b2

    goto :goto_0

    :pswitch_3
    const v2, 0x7f0f06af

    goto :goto_0

    :pswitch_4
    const v2, 0x7f0f06b3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->playPowerSound(I)V

    return-void

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0f06ae

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$15;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$15;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroid/app/AlertDialog;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private showChargingNotification(I)V
    .locals 14

    const/4 v13, 0x5

    const/4 v12, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string/jumbo v2, ""

    const-string/jumbo v5, "PowerUI.Notification"

    const-string/jumbo v8, "showChargingNotification()"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    packed-switch v5, :pswitch_data_0

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f0f0693

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    :goto_0
    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->SUPPORT_USB_TYPE_C:Z

    if-eqz v5, :cond_a

    iget v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    if-ne v5, v12, :cond_9

    move v5, v6

    :goto_1
    if-nez v5, :cond_1

    iget-wide v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_b

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    iget-wide v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/power/PowerNotificationWarnings;->getFormattedTime(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    const v10, 0x7f0f06a3

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_2
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0205da

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-wide v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    invoke-virtual {v5, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v7, -0x2

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string/jumbo v7, "sys"

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x106005a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSmartManagerBatterySettings:Landroid/content/Intent;

    invoke-direct {p0, v5}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingActivity(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    iget-wide v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-gtz v5, :cond_2

    iget v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    if-ne v5, v13, :cond_c

    :cond_2
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v5, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v0

    :goto_3
    iget-object v5, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_3

    iget-object v5, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v7, 0x1020044

    const/16 v8, 0x8

    invoke-virtual {v5, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v7, "charging_state"

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v9, 0x7f130039

    invoke-virtual {v5, v7, v9, v0, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iput-boolean v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowChargingNotice:Z

    return-void

    :pswitch_0
    const-string/jumbo v5, "VZW"

    sget-object v8, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "SPR"

    sget-object v8, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f0f0694

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f0f0693

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f0f0695

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :pswitch_2
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f0f0696

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :pswitch_3
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f0f0697

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :pswitch_4
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f0f069b

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v9, 0x7f0f069c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eq p1, v13, :cond_0

    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v5, :cond_7

    const v3, 0x7f0f069e

    :goto_4
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowChargerToast:Landroid/widget/Toast;

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string/jumbo v8, ""

    invoke-static {v5, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowChargerToast:Landroid/widget/Toast;

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowChargerToast:Landroid/widget/Toast;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowChargerToast:Landroid/widget/Toast;

    invoke-virtual {v5, v3}, Landroid/widget/Toast;->setText(I)V

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowChargerToast:Landroid/widget/Toast;

    invoke-virtual {v5, v7}, Landroid/widget/Toast;->setDuration(I)V

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowChargerToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_7
    const v3, 0x7f0f069d

    goto :goto_4

    :cond_8
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v5, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f0f069f

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f0f06a1

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eq p1, v12, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showSlowByChargerConnectionInfoPopUp()V

    goto/16 :goto_0

    :cond_9
    move v5, v7

    goto/16 :goto_1

    :cond_a
    move v5, v7

    goto/16 :goto_1

    :cond_b
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    new-array v9, v6, [Ljava/lang/Object;

    iget v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const v10, 0x7f0f06a4

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_c
    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->SUPPORT_USB_TYPE_C:Z

    if-eqz v5, :cond_d

    iget v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    if-eq v5, v12, :cond_2

    :cond_d
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private showChargingTypeSwitchedToast(Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "showChargingTypeSwitchedToast()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showFullBatteryNotification()V
    .locals 9

    const/4 v8, 0x1

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f066a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f066b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0205f3

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string/jumbo v5, "sys"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00bd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v4, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v5, 0x1020044

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v5, "full_battery"

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v7, 0x7f130039

    invoke-virtual {v4, v5, v7, v0, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private showIncompatibleChargerPopUpAndNotification()V
    .locals 15

    const-string/jumbo v11, "PowerUI.Notification"

    const-string/jumbo v12, "showIncompatibleChargerNotification()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v12, 0x7f0f06b4

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v12, 0x7f0f06b7

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v11, Landroid/app/Notification$Builder;

    iget-object v12, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0207a7

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    const/4 v12, -0x2

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v11

    const-string/jumbo v12, "sys"

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b00be

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v11, v7}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    iget-object v11, v6, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v11, :cond_0

    iget-object v11, v6, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v12, 0x1020044

    const/16 v13, 0x8

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_0
    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v12, "incompatible_charger_state"

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v14, 0x7f130039

    invoke-virtual {v11, v12, v14, v6, v13}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "com.android.systemui.incompatible_charging"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string/jumbo v11, "DoNotShowIncompatibleChargerWarning"

    const/4 v12, 0x0

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string/jumbo v11, "PowerUI.Notification"

    const-string/jumbo v12, "Incompatible charging notice doesn\'t show again"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleChargerDialog:Landroid/app/AlertDialog;

    if-nez v11, :cond_2

    new-instance v11, Landroid/view/ContextThemeWrapper;

    iget-object v12, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x1030132

    invoke-direct {v11, v12, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v11, 0x7f040023

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v11, 0x7f1300e2

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    sget-boolean v11, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v12, 0x7f0f06b6

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const v11, 0x7f1300e1

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v11, Lcom/android/systemui/power/PowerNotificationWarnings$19;

    invoke-direct {v11, p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings$19;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v11}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v11, Lcom/android/systemui/power/PowerNotificationWarnings$20;

    invoke-direct {v11, p0, v2, v5}, Lcom/android/systemui/power/PowerNotificationWarnings$20;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;)V

    const v12, 0x104000a

    invoke-virtual {v0, v12, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    new-instance v11, Lcom/android/systemui/power/PowerNotificationWarnings$21;

    invoke-direct {v11, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$21;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v3, v11}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x7d9

    invoke-virtual {v11, v12}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleChargerDialog:Landroid/app/AlertDialog;

    :cond_2
    return-void

    :cond_3
    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v12, 0x7f0f06b5

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private showInvalidChargerNotification()V
    .locals 7

    const/4 v6, 0x1

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0201d9

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0260

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0261

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x106005a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v3, "low_battery"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v5, 0x7f130039

    invoke-virtual {v2, v3, v5, v0, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private showOverHeatPopUp()V
    .locals 7

    const/4 v6, 0x0

    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_SPECIFIC_POWER_REQUEST_BY_VZW:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0670

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0673

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatNoticeDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v4, 0x104000a

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings$8;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$8;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatNoticeDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0672

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0674

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f066e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private showOverheatNotification(I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_SPECIFIC_POWER_REQUEST_BY_VZW:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0670

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0671

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0205dc

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string/jumbo v5, "sys"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00a2

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const-string/jumbo v4, "com.samsung.systemui.power.action.ACTION_BATTERY_OVER_HEAT"

    invoke-direct {p0, v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v5, 0x1020044

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v5, "over_heat"

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v7, 0x7f130039

    invoke-virtual {v4, v5, v7, v0, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f066c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f066d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private showOverheatShutdownHappenedPopUp()V
    .locals 6

    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_SPECIFIC_POWER_REQUEST_BY_VZW:Z

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f067a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f067c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings$11;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$11;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    const v5, 0x104000a

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings$12;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$12;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0679

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f067b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0682

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0683

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private showPowerSavingRecommendNotification(I)V
    .locals 13

    const/4 v12, 0x2

    const v11, 0x7f1300e5

    const v10, 0x7f0b00bc

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f0f06a8

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0f06aa

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0201d9

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string/jumbo v6, "com.samsung.systemui.power.action.ACTION_BATTERY_CLOSE_SAVER_RECOMMEND"

    invoke-direct {p0, v6}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v10}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->addCloseSaverRecommendAction(Landroid/app/Notification$Builder;)V

    iget v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySmartManagerSettings:Landroid/content/Intent;

    invoke-direct {p0, v5}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingActivity(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/DeviceState;->isTelephonyIdle(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v12}, Lcom/android/systemui/power/PowerNotificationWarnings;->playPowerSound(I)V

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->attachLowBatterySound(Landroid/app/Notification$Builder;)V

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v5, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v0

    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f040024

    invoke-direct {v2, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v5, 0x7f130095

    const v6, 0x7f0201db

    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x1040150

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f1300e3

    invoke-virtual {v2, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getColor(I)I

    move-result v5

    const v6, 0x7f1300e3

    invoke-virtual {v2, v6, v5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v5, 0x7f130096

    invoke-virtual {v2, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v5, 0x7f1300e4

    invoke-virtual {v2, v5, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0f06ad

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v11, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string/jumbo v5, "com.samsung.systemui.power.action.ACTION_BATTERY_LOW_CLOSE_BUTTON"

    invoke-direct {p0, v5}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v11, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateShowButtonBackground(Landroid/widget/RemoteViews;)V

    iput-object v2, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v6, "battery_saver_recommend"

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v8, 0x7f130039

    invoke-virtual {v5, v6, v8, v0, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0f06a9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_3
    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0f06ac

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0f06ab

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method private showPowerSupplyingInLowBatteryPopUp(I)V
    .locals 8

    const/4 v7, 0x0

    move v1, p1

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0f06ba

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0f06bb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerSupplyingInLowBatteryNoticeDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v5, 0x104000a

    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    new-instance v5, Lcom/android/systemui/power/PowerNotificationWarnings$22;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$22;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    iput-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerSupplyingInLowBatteryNoticeDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    return-void
.end method

.method private showSafeModeNotification()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "showSafeModeNotification()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_SPECIFIC_POWER_REQUEST_BY_VZW:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0689

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f068a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0205eb

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string/jumbo v5, "sys"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106005a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string/jumbo v4, "com.samsung.systemui.power.action.ACTION_BATTERY_SAFE_MODE"

    invoke-direct {p0, v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v5, 0x1020044

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v5, "safe_mode"

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v7, 0x7f130039

    invoke-virtual {v4, v5, v7, v0, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0684

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0685

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private showSafeModePopUp()V
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v5, "PowerUI.Notification"

    const-string/jumbo v6, "showSafeModePopUp()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->SUPPORT_SPECIFIC_POWER_REQUEST_BY_VZW:Z

    if-eqz v5, :cond_1

    const v4, 0x7f0f068b

    const v2, 0x7f0f068c

    const v3, 0x7f0f068d

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSafeModeDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/high16 v5, 0x1040000

    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/systemui/power/PowerNotificationWarnings$13;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$13;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v5, Lcom/android/systemui/power/PowerNotificationWarnings$14;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$14;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSafeModeDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void

    :cond_1
    const v4, 0x7f0f0686

    const v2, 0x7f0f0687

    const v3, 0x7f0f0688

    goto :goto_0
.end method

.method private showSlowByChargerConnectionInfoPopUp()V
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "com.android.systemui.power_slow_by_charger_connection_info"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string/jumbo v8, "DoNotShowSlowByChargerConnectionInfo"

    invoke-interface {v5, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "PowerUI.Notification"

    const-string/jumbo v9, "Slow by charger connection Info Pop up doesn\'t show again"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroid/app/AlertDialog;

    if-nez v8, :cond_1

    new-instance v8, Landroid/view/ContextThemeWrapper;

    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v10, 0x1030132

    invoke-direct {v8, v9, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040025

    invoke-virtual {v7, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v8, 0x7f1300e2

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    sget-boolean v8, Lcom/android/systemui/SystemUIRune;->SUPPORT_SPECIFIC_POWER_REQUEST_BY_VZW:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v9, 0x7f0f06a0

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v9, 0x7f0f06a2

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v8, 0x7f1300e1

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Lcom/android/systemui/power/PowerNotificationWarnings$16;

    invoke-direct {v8, p0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings$16;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v8, Lcom/android/systemui/power/PowerNotificationWarnings$17;

    invoke-direct {v8, p0, v3, v5}, Lcom/android/systemui/power/PowerNotificationWarnings$17;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;)V

    const v9, 0x104000a

    invoke-virtual {v0, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    new-instance v8, Lcom/android/systemui/power/PowerNotificationWarnings$18;

    invoke-direct {v8, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$18;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    iput-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroid/app/AlertDialog;

    :cond_1
    return-void

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v9, 0x7f0f069f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private showStartSaverConfirmation()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0263

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(I)V

    const v1, 0x10405d2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mStartSaverMode:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f0f0264

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$7;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method

.method private showUnintentionalLcdOnPopUp()V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f06bc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f06bd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUnintentionalLcdOnAlertDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings$23;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$23;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    const v5, 0x104000a

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings$24;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$24;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUnintentionalLcdOnAlertDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private showWarningNotification()V
    .locals 13

    const v12, 0x7f1300e5

    const v11, 0x7f0f06ad

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f0f068e

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    if-nez v5, :cond_4

    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0f0690

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0201d9

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string/jumbo v6, "PNW.dismissedWarning"

    invoke-direct {p0, v6}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x106005b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    if-nez v5, :cond_0

    const-string/jumbo v5, "PNW.batterySettings"

    invoke-direct {p0, v5}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "com.samsung.systemui.power.action.ACTION_BATTERY_LOW_CLOSE_BUTTON"

    invoke-direct {p0, v6}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v1, v8, v5, v6}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-boolean v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/DeviceState;->isTelephonyIdle(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v10}, Lcom/android/systemui/power/PowerNotificationWarnings;->playPowerSound(I)V

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->attachLowBatterySound(Landroid/app/Notification$Builder;)V

    iput-boolean v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v5, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v0

    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f040024

    invoke-direct {v2, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x1040150

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f1300e3

    invoke-virtual {v2, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v5, 0x7f130096

    invoke-virtual {v2, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v5, 0x7f1300e4

    invoke-virtual {v2, v5, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string/jumbo v5, "com.samsung.systemui.power.action.ACTION_BATTERY_LOW_CLOSE_BUTTON"

    invoke-direct {p0, v5}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v12, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateShowButtonBackground(Landroid/widget/RemoteViews;)V

    iput-object v2, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v6, "low_battery"

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v8, 0x7f130039

    invoke-virtual {v5, v6, v8, v0, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0f068f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_4
    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0f0692

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0f0691

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method private showWillOverheatShutdownPopUp()V
    .locals 9

    const v8, 0x7f0f0680

    const v6, 0x104000a

    const/4 v7, 0x0

    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_SPECIFIC_POWER_REQUEST_BY_VZW:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0675

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0677

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-nez v4, :cond_0

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings$9;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$9;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v0, v4}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings$10;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$10;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0676

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f067d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0f067f

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private showWirelessChargerDisconnectToast()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "showWirelessChargerDisconnectToast()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0698

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerDisconnectToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerDisconnectToast:Landroid/widget/Toast;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerDisconnectToast:Landroid/widget/Toast;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerDisconnectToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerDisconnectToast:Landroid/widget/Toast;

    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setDuration(I)V

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerDisconnectToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private turnOnScreen()V
    .locals 6

    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "PowerUI.Notification"

    const-string/jumbo v3, "turnOnScreen : fail to get PowerManager reference"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "BatteryStateChanged"

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IPowerManager;->wakeUp(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "PowerUI.Notification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "turnOnScreen : Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateNotification()V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNotification mWarning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mPlaySound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mInvalidCharger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showInvalidChargerNotification()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isBatteryNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showWarningNotification()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "We do not show warning notifications due to KNOX."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "low_battery"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v3, 0x7f130039

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_0
.end method

.method private updateShowButtonBackground(Landroid/widget/RemoteViews;)V
    .locals 4

    const v3, 0x7f1300e5

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->isShowButtonBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "setBackgroundResource"

    const v2, 0x10805b8

    invoke-virtual {p1, v3, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "setBackgroundResource"

    const v2, 0x10805b7

    invoke-virtual {p1, v3, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public dismissBatteryHealthInterruptionPopUp()V
    .locals 2

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissChargingNotification()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismissBatteryHealthInterruptionWarning()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissBatteryHealthInterruptionPopUp()V

    return-void
.end method

.method public dismissChargingNotice()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowChargingNotice:Z

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_USB_TYPE_C:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissSlowByChargerConnectionInfoPopUp()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissChargingNotification()V

    return-void
.end method

.method public dismissFullBatteryNotice()V
    .locals 3

    const-string/jumbo v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissing full battery notice: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissFullBatteryNotification()V

    return-void
.end method

.method public dismissIncompatibleChargerNotice()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleChargerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissIncompatibleChargerNotification()V

    return-void
.end method

.method public dismissInvalidChargerWarning()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissInvalidChargerNotification()V

    return-void
.end method

.method public dismissLowBatteryWarning()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryNotification()V

    return-void
.end method

.method public dismissOverheatWarning()V
    .locals 2

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissOverheatWarning()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatNoticeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatNoticeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissOverheatNotification()V

    return-void
.end method

.method public dismissPowerSavingRecommendNotice()V
    .locals 2

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissPowerSavingRecommendNotice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissPowerSavingRecommendNotification()V

    return-void
.end method

.method public dismissPowerSupplyingInLowBatteryNotice()V
    .locals 2

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissPowerSupplyingInLowBatteryNotice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissPowerSupplyingInLowBatteryPopUp()V

    return-void
.end method

.method public dismissUnintentionalLcdOnNotice()V
    .locals 2

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissUnintentionallyLcdOnNotice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissUnintentionalLcdOnPopUp()V

    return-void
.end method

.method public dismissWaterProtectionAlertDialog(Z)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismiss WaterProtectionAlertDialog - isWaterDetected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mIsWaterDetected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIsWaterDetected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIsWaterDetected:Z

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public dismissWillOverheatShutdownWarning()V
    .locals 2

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissWillOverheatShutdownWarning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissWillOverheatShutdownPopUp()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "mWarning="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v1, "mPlaySound="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v1, "mInvalidCharger="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v1, "mShowing="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/power/PowerNotificationWarnings;->SHOWING_STRINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "mSaverConfirmation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v1, :cond_0

    const-string/jumbo v0, "not null"

    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isInvalidChargerWarningShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    return v0
.end method

.method public isLowBatteryWarningShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    return v0
.end method

.method public playPowerSound(I)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x4

    const/4 v7, 0x1

    const-string/jumbo v4, "PowerUI.Notification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "playPowerSound : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KnoxStateMonitor;->isChargerConnectionSoundEnabledState()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->semIsRecordActive(I)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eq v8, v0, :cond_5

    if-eq v9, v0, :cond_5

    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "playPowerSound - recording so doesn\'t play sound"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-ne p1, v7, :cond_0

    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "playPowerSound : Knox Custom disabled SOUND_TYPE_CHARGER_CONNECTION"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v0, 0x0

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v4, :cond_6

    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "playPowerSound : NotificationPlayer is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/systemui/media/NotificationPlayer;

    const-string/jumbo v5, "PowerUI.Notification"

    invoke-direct {v4, v5}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v4, :cond_6

    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "playPowerSound : fail to new NotificationPlayer"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    :goto_0
    if-ne p1, v8, :cond_7

    if-nez v3, :cond_7

    const/4 v3, 0x1

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "alertoncall_mode"

    const/4 v6, -0x2

    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v7, :cond_b

    const/4 v2, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/DeviceState;->isTelephonyIdle(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-ne v8, v0, :cond_c

    :cond_8
    :goto_2
    if-eqz v2, :cond_d

    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "calling so vibrate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :cond_9
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->playPowerStateSound(II)V

    return-void

    :cond_a
    const/4 v3, 0x2

    goto :goto_0

    :cond_b
    const/4 v2, 0x0

    goto :goto_1

    :cond_c
    if-ne v9, v0, :cond_9

    goto :goto_2

    :cond_d
    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "calling and doesn\'t notify during calls"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public runOverheatShutdownTask(I)V
    .locals 4

    const-string/jumbo v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runOverheatShutdownTask - Delay time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownTask:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showBatteryHealthInterruptionWarning()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "PowerUI.Notification"

    const-string/jumbo v3, "showBatteryHealthInterruptionWarning()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "don\'t show Battery health interruption warning while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showBatteryHealthInterruptionPopUp()V

    return-void
.end method

.method public showChargingNotice(I)V
    .locals 9

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v8, 0x6

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    iget-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_BATTERY_CHARGING_ESTIMATE_TIME:Z

    if-nez v3, :cond_2

    if-eq p1, v4, :cond_2

    if-eq p1, v5, :cond_2

    if-eq v2, v4, :cond_0

    if-ne v2, v5, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissChargingNotification()V

    :cond_1
    const-string/jumbo v3, "PowerUI.Notification"

    const-string/jumbo v4, "Charging estimate time is not supported and connected cable is not a fast/slow charger, so return!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_BATTERY_CHARGING_ESTIMATE_TIME:Z

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->getChargeEstimateTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    :goto_0
    const-string/jumbo v3, "PowerUI.Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showChargingNotice oldChargingType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " currentChargingType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " oldChargingTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mChargingTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_USB_TYPE_C:Z

    if-eqz v3, :cond_5

    if-ne v2, v8, :cond_3

    iget v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    if-eq v3, v8, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissSlowByChargerConnectionInfoPopUp()V

    :cond_3
    iget v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    if-ne v3, v8, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowChargingNotice:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    if-ne v2, v3, :cond_5

    const-string/jumbo v3, "PowerUI.Notification"

    const-string/jumbo v4, "Not fully connected charger noti is already shown, so return!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    goto :goto_0

    :cond_5
    iget-boolean v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowChargingNotice:Z

    if-eqz v3, :cond_6

    iget-wide v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    cmp-long v3, v0, v4

    if-nez v3, :cond_6

    iget v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOldBatteryLevel:I

    iget v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    if-ne v2, v3, :cond_6

    const-string/jumbo v3, "PowerUI.Notification"

    const-string/jumbo v4, "There is no change about charging status, so return!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    iput v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOldBatteryLevel:I

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "charging_notif"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->showChargingNotification(I)V

    :cond_7
    return-void
.end method

.method public showChargingTypeSwitchedNotice(Z)V
    .locals 3

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "GATE tool is running so don\'t show Charging type switched notice"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v2, 0x7f0f069a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showChargingTypeSwitchedToast(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0699

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public showFullBatteryNotice()V
    .locals 4

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PowerUI.Notification"

    const-string/jumbo v3, "GATE tool is running so don\'t show Full Charge notice"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showFullBatteryNotification()V

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    if-nez v1, :cond_1

    const-string/jumbo v2, "PowerUI.Notification"

    const-string/jumbo v3, "notifyFullBatteryNotification : fail to get PowerManager reference"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v2, "PowerUI.Notification"

    const v3, 0x10000006

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method

.method public showIncompatibleChargerNotice()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "don\'t show Incompatible charging warning while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFTAMode:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "FTA Mode is ON so don\'t show Incompatible charging warning"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "showIncompatibleChargerWarning()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarning()V

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showIncompatibleChargerPopUpAndNotification()V

    return-void
.end method

.method public showInvalidChargerWarning()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    return-void
.end method

.method public showLowBatteryWarning(Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string/jumbo v2, "PowerUI.Notification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "show low battery warning: level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] playSound="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    move v0, v1

    :cond_0
    if-eqz v0, :cond_1

    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFTAMode:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    const/4 v3, -0x2

    if-eq v3, v2, :cond_2

    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "FTA Mode is ON and Not critical Low battery"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySaverRecommend:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissPowerSavingRecommendNotice()V

    :cond_3
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    return-void
.end method

.method public showOverheatShutdownHappenedNotice()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "don\'t show Overheat shutdown notice while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "don\'t show Overheat shutdown notice while Over heat shutdown warning"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "showOverheatShutdownHappenedNotice()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showOverheatShutdownHappenedPopUp()V

    return-void
.end method

.method public showOverheatWarning(I)V
    .locals 2

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "showOverheatWarning()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->showOverheatNotification(I)V

    return-void
.end method

.method public showPowerSavingRecommendNotice(I)V
    .locals 2

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "showPowerSavingRecommendNotice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->showPowerSavingRecommendNotification(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySaverRecommend:Z

    return-void
.end method

.method public showPowerSupplyingInLowBatteryNotice(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFTAMode:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "FTA Mode is ON so don\'t show Power supplying in low battery notice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "showPowerSupplyingInLowBatteryNotice()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->showPowerSupplyingInLowBatteryPopUp(I)V

    return-void
.end method

.method public showSafeModeNotice()V
    .locals 2

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "showSafeModeNotice()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showSafeModeNotification()V

    return-void
.end method

.method public showUnintentionalLcdOnNotice()V
    .locals 2

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "showUnintentionallyLcdOnNotice()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showUnintentionalLcdOnPopUp()V

    return-void
.end method

.method public showWaterProtectionAlertDialog(Z)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "PowerUI.Notification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show WaterProtectionAlertDialog - isWaterDetected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mIsWaterDetected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIsWaterDetected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIsWaterDetected:Z

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    iput-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0667

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0668

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f052e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$25;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$25;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->playPowerSound(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    return-void
.end method

.method public showWillOverheatShutdownWarning()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "don\'t show Overheat shutdown warning while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "showWillOverheatShutdownWarning()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissOverheatShutdownHappenedPopUp()V

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showWillOverheatShutdownPopUp()V

    return-void
.end method

.method public showWirelessChargerDisconnectNotice()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFTAMode:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "FTA Mode is ON so don\'t show Wireless charging disconnect warning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showWirelessChargerDisconnectToast()V

    return-void
.end method

.method public update(IIJII)V
    .locals 3

    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    if-ltz p2, :cond_1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    :cond_0
    :goto_0
    iput p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    iput-wide p3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScreenOffTime:J

    iput p5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStatus:I

    iput p6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    if-ge p2, v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    goto :goto_0
.end method

.method public updateLowBatteryWarning()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    return-void
.end method

.method public updatePowerSharingCableAlertDialog(Z)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.android.systemui.power_sharing_popup_info"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v5, "DoNotShowPowerSharingPopup"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "PowerUI.Notification"

    const-string/jumbo v6, "power sharing Pop up doesn\'t show again"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->isPowerSharingApplicationInstalled()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerSharingAlertDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_1

    new-instance v5, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x1030132

    invoke-direct {v5, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400fa

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f1300e2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/systemui/power/PowerNotificationWarnings$26;

    invoke-direct {v5, p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings$26;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "Power Sharing"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f072f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f052e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/power/PowerNotificationWarnings$27;

    invoke-direct {v6, p0, v1, v3}, Lcom/android/systemui/power/PowerNotificationWarnings$27;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0022

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/systemui/power/PowerNotificationWarnings$28;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$28;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerSharingAlertDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerSharingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerSharingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerSharingAlertDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerSharingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerSharingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method public userSwitched()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    return-void
.end method

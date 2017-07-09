.class public Lorg/codeaurora/ims/qtiims/QtiImsInterfaceUtils;
.super Ljava/lang/Object;
.source "QtiImsInterfaceUtils.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final QTI_IMS_ASSURED_TRANSFER:I = 0x2

.field public static final QTI_IMS_BLIND_TRANSFER:I = 0x1

.field public static final QTI_IMS_CALL_DEFLECT_NUMBER:Ljava/lang/String; = "ims_call_deflect_number"

.field public static final QTI_IMS_CALL_RAT_EXTRA_KEY:Ljava/lang/String; = "callRadioTech"

.field public static final QTI_IMS_CONSULTATIVE_TRANSFER:I = 0x4

.field public static final QTI_IMS_DEFLECT_ENABLED:Ljava/lang/String; = "qti.ims.call_deflect"

.field public static final QTI_IMS_REQUEST_ERROR:I = 0x1

.field public static final QTI_IMS_REQUEST_SUCCESS:I = 0x0

.field public static final QTI_IMS_TRANSFER_EXTRA_KEY:Ljava/lang/String; = "transferType"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "QtiImsInterfaceUtils"

    sput-object v0, Lorg/codeaurora/ims/qtiims/QtiImsInterfaceUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public static getCallDeflectNumber(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 83
    const-string v1, "ims_call_deflect_number"

    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "deflectcall":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 91
    :cond_0
    return-object v0
.end method

.method public static isCallTransferEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    new-instance v0, Lcom/android/internal/telephony/ConfigResourceUtil;

    invoke-direct {v0}, Lcom/android/internal/telephony/ConfigResourceUtil;-><init>()V

    .line 112
    .local v0, "mConfigResUtil":Lcom/android/internal/telephony/ConfigResourceUtil;
    const-string v1, "config_enable_calltransfer_over_ims"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/ConfigResourceUtil;->getBooleanValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static setCallDeflectNumber(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 96
    move-object v0, p1

    .line 98
    .local v0, "deflectNum":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    :cond_0
    const-string v0, ""

    .line 102
    :cond_1
    const-string v1, "ims_call_deflect_number"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 104
    return-void
.end method
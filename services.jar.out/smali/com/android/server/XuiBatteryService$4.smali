.class Lcom/android/server/XuiBatteryService$4;
.super Ljava/lang/Object;
.source "XuiBatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/XuiBatteryService;->processValuesLocked(IIILandroid/os/BatteryProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/XuiBatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/XuiBatteryService;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/XuiBatteryService$4;->this$0:Lcom/android/server/XuiBatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 142
    const-string v1, "XuiBatteryService"

    const-string v2, "send android.intent.action.BATTERY_LOW_XUI ....enable......."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BATTERY_LOW_XUI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "statusIntent":Landroid/content/Intent;
    const-string v1, "enalbeSupperPowerSave"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    iget-object v1, p0, Lcom/android/server/XuiBatteryService$4;->this$0:Lcom/android/server/XuiBatteryService;

    # getter for: Lcom/android/server/XuiBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/XuiBatteryService;->access$300(Lcom/android/server/XuiBatteryService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 147
    return-void
.end method

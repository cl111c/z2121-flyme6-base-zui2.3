.class Lcom/android/server/AppOpsService$1;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/server/AppOpsService$1;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/AppOpsService$1;->this$0:Lcom/android/server/AppOpsService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/AppOpsService;->timerCondition:Z

    .line 123
    return-void
.end method

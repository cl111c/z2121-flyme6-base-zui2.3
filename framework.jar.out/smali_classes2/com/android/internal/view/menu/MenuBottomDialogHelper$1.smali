.class Lcom/android/internal/view/menu/MenuBottomDialogHelper$1;
.super Ljava/lang/Object;
.source "MenuBottomDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/MenuBottomDialogHelper;->tryShow()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/MenuBottomDialogHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/MenuBottomDialogHelper;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper$1;->this$0:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper$1;->this$0:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->dismiss()V

    .line 145
    return-void
.end method
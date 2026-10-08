.class Landroidx/fragment/app/DialogFragment$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/DialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic j:Landroidx/fragment/app/DialogFragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/DialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/DialogFragment$1;->j:Landroidx/fragment/app/DialogFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/DialogFragment$1;->j:Landroidx/fragment/app/DialogFragment;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/fragment/app/DialogFragment;->s:Landroid/content/DialogInterface$OnDismissListener;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    check-cast p0, Landroidx/fragment/app/DialogFragment$3;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment$3;->onDismiss(Landroid/content/DialogInterface;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

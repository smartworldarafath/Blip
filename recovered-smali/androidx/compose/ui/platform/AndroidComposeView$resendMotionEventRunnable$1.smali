.class public final Landroidx/compose/ui/platform/AndroidComposeView$resendMotionEventRunnable$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/platform/AndroidComposeView;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView$resendMotionEventRunnable$1;->j:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView$resendMotionEventRunnable$1;->j:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeView;->w0:Landroid/view/MotionEvent;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/16 v2, 0xa

    .line 15
    .line 16
    if-eq p0, v2, :cond_2

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-eq p0, v2, :cond_2

    .line 20
    .line 21
    const/4 v2, 0x7

    .line 22
    if-eq p0, v2, :cond_1

    .line 23
    .line 24
    const/16 v3, 0x8

    .line 25
    .line 26
    const/16 v4, 0x9

    .line 27
    .line 28
    if-eq p0, v3, :cond_0

    .line 29
    .line 30
    if-eq p0, v4, :cond_1

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v2, v4

    .line 35
    :cond_1
    :goto_0
    iget-wide v3, v0, Landroidx/compose/ui/platform/AndroidComposeView;->x0:J

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/platform/AndroidComposeView;->I(Landroid/view/MotionEvent;IJZ)V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method

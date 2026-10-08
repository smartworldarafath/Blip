.class public final synthetic Lh6;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lh6;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lh6;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 3

    .line 1
    iget v0, p0, Lh6;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lh6;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-wide v1, Landroidx/compose/ui/text/TextRange;->b:J

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/text/LegacyTextFieldState;->e(J)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    sget-wide v0, Landroidx/compose/ui/text/TextRange;->b:J

    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->f(J)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void

    .line 31
    :pswitch_0
    check-cast p0, Lkotlinx/coroutines/Job;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    check-cast p0, Lkotlinx/coroutines/JobSupport;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->n(Ljava/util/concurrent/CancellationException;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

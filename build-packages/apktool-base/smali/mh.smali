.class public final synthetic Lmh;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/runtime/MutableState;

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;II)V
    .locals 0

    .line 1
    iput p3, p0, Lmh;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lmh;->k:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    iput p2, p0, Lmh;->l:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lmh;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget v2, p0, Lmh;->l:I

    .line 6
    .line 7
    iget-object p0, p0, Lmh;->k:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 10
    .line 11
    check-cast p2, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    or-int/lit8 p2, v2, 0x1

    .line 20
    .line 21
    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-static {p0, p1, p2}, Lnet/blip/android/ui/home/TransferCancellationDialogKt;->a(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)V

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :pswitch_0
    or-int/lit8 p2, v2, 0x1

    .line 30
    .line 31
    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-static {p0, p1, p2}, Lnet/blip/android/ui/home/TransferCancellationDialogKt;->a(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :pswitch_1
    or-int/lit8 p2, v2, 0x1

    .line 40
    .line 41
    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-static {p0, p1, p2}, Lnet/blip/android/ui/home/TransferCancellationDialogKt;->a(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)V

    .line 46
    .line 47
    .line 48
    return-object v1

    .line 49
    :pswitch_2
    or-int/lit8 p2, v2, 0x1

    .line 50
    .line 51
    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    invoke-static {p0, p1, p2}, Lnet/blip/android/ui/home/TransferCancellationDialogKt;->a(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)V

    .line 56
    .line 57
    .line 58
    return-object v1

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

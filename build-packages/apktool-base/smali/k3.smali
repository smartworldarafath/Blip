.class public final synthetic Lk3;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/ui/Modifier;

.field public final synthetic l:F

.field public final synthetic m:Lkotlin/Function;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;FLkotlin/Function;II)V
    .locals 0

    .line 1
    iput p5, p0, Lk3;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lk3;->k:Landroidx/compose/ui/Modifier;

    .line 4
    .line 5
    iput p2, p0, Lk3;->l:F

    .line 6
    .line 7
    iput-object p3, p0, Lk3;->m:Lkotlin/Function;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lk3;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lk3;->m:Lkotlin/Function;

    .line 6
    .line 7
    iget v3, p0, Lk3;->l:F

    .line 8
    .line 9
    iget-object p0, p0, Lk3;->k:Landroidx/compose/ui/Modifier;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 15
    .line 16
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 17
    .line 18
    check-cast p2, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const/16 p2, 0x1b1

    .line 24
    .line 25
    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-static {p0, v3, v2, p1, p2}, Lnet/blip/shared/StackLayoutKt;->a(Landroidx/compose/ui/Modifier;FLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :pswitch_0
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 34
    .line 35
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 36
    .line 37
    check-cast p2, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    const/4 p2, 0x1

    .line 43
    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-static {p0, v3, v2, p1, p2}, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt;->a(Landroidx/compose/ui/Modifier;FLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 48
    .line 49
    .line 50
    return-object v1

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

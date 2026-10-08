.class public final synthetic Lsh;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/runtime/MutableState;

.field public final synthetic l:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Ljava/util/ArrayList;II)V
    .locals 0

    .line 1
    iput p4, p0, Lsh;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lsh;->k:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    iput-object p2, p0, Lsh;->l:Ljava/util/ArrayList;

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
    .locals 4

    .line 1
    iget v0, p0, Lsh;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    iget-object v3, p0, Lsh;->l:Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object p0, p0, Lsh;->k:Landroidx/compose/runtime/MutableState;

    .line 9
    .line 10
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-static {p0, v3, p1, p2}, Lnet/blip/android/ui/home/TransferRemovalDialogKt;->a(Landroidx/compose/runtime/MutableState;Ljava/util/ArrayList;Landroidx/compose/runtime/Composer;I)V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :pswitch_0
    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-static {p0, v3, p1, p2}, Lnet/blip/android/ui/home/TransferRemovalDialogKt;->a(Landroidx/compose/runtime/MutableState;Ljava/util/ArrayList;Landroidx/compose/runtime/Composer;I)V

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

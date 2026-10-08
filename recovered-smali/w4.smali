.class public final synthetic Lw4;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;

.field public final synthetic l:Landroidx/compose/foundation/lazy/layout/CacheWindowScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/lazy/layout/CacheWindowScope;I)V
    .locals 0

    .line 1
    iput p3, p0, Lw4;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lw4;->k:Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;

    .line 4
    .line 5
    iput-object p2, p0, Lw4;->l:Landroidx/compose/foundation/lazy/layout/CacheWindowScope;

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
    iget v0, p0, Lw4;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lw4;->l:Landroidx/compose/foundation/lazy/layout/CacheWindowScope;

    .line 6
    .line 7
    iget-object p0, p0, Lw4;->k:Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    check-cast p2, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    packed-switch v0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v2, p1, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->c(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;II)V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :pswitch_0
    invoke-virtual {p0, v2, p1, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->c(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;II)V

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

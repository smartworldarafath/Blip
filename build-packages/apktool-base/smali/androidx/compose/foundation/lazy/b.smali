.class public final synthetic Landroidx/compose/foundation/lazy/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

.field public final synthetic k:I

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/lazy/b;->j:Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/foundation/lazy/b;->k:I

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/lazy/b;->l:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    iget-object v0, p0, Landroidx/compose/foundation/lazy/b;->j:Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 14
    .line 15
    iget v1, p0, Landroidx/compose/foundation/lazy/b;->k:I

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/compose/foundation/lazy/b;->l:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {v0, v1, p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->e(ILjava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

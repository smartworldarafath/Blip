.class public final synthetic Landroidx/compose/ui/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/runtime/Composer;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/Composer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/b;->j:Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/ui/Modifier$Element;

    .line 4
    .line 5
    instance-of v0, p2, Landroidx/compose/ui/ComposedModifier;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p2, Landroidx/compose/ui/ComposedModifier;

    .line 10
    .line 11
    iget-object p2, p2, Landroidx/compose/ui/ComposedModifier;->b:Lkotlin/jvm/functions/Function3;

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    invoke-static {v0, p2}, Lkotlin/jvm/internal/TypeIntrinsics;->c(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/compose/ui/b;->j:Landroidx/compose/runtime/Composer;

    .line 25
    .line 26
    invoke-interface {p2, v1, p0, v0}, Lkotlin/jvm/functions/Function3;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Landroidx/compose/ui/Modifier;

    .line 31
    .line 32
    invoke-static {p0, p2}, Landroidx/compose/ui/ComposedModifierKt;->b(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    :cond_0
    invoke-interface {p1, p2}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

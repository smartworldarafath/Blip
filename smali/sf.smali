.class public final synthetic Lsf;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Z

.field public final synthetic k:Lkotlin/ranges/ClosedFloatingPointRange;

.field public final synthetic l:F

.field public final synthetic m:Lkotlin/jvm/functions/Function1;

.field public final synthetic n:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(ZLkotlin/ranges/ClosedFloatingPointRange;FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lsf;->j:Z

    .line 5
    .line 6
    iput-object p2, p0, Lsf;->k:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 7
    .line 8
    iput p3, p0, Lsf;->l:F

    .line 9
    .line 10
    iput-object p4, p0, Lsf;->m:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    iput-object p5, p0, Lsf;->n:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 2
    .line 3
    sget-object v0, Landroidx/compose/material/SliderKt;->a:Landroidx/compose/ui/Modifier;

    .line 4
    .line 5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    iget-boolean v1, p0, Lsf;->j:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 12
    .line 13
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->j:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 14
    .line 15
    invoke-interface {p1, v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    new-instance v1, Lyf;

    .line 19
    .line 20
    iget-object v2, p0, Lsf;->k:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 21
    .line 22
    iget v3, p0, Lsf;->l:F

    .line 23
    .line 24
    iget-object v4, p0, Lsf;->m:Lkotlin/jvm/functions/Function1;

    .line 25
    .line 26
    iget-object p0, p0, Lsf;->n:Lkotlin/jvm/functions/Function0;

    .line 27
    .line 28
    invoke-direct {v1, v2, v3, v4, p0}, Lyf;-><init>(Lkotlin/ranges/ClosedFloatingPointRange;FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 29
    .line 30
    .line 31
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 32
    .line 33
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsActions;->i:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 34
    .line 35
    new-instance v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-direct {v2, v3, v1}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, p0, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-object v0
.end method

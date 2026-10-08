.class final Landroidx/compose/foundation/selection/ToggleableElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/selection/ToggleableNode;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Z

.field public final c:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final d:Landroidx/compose/ui/semantics/Role;

.field public final e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/compose/foundation/selection/ToggleableElement;->b:Z

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/selection/ToggleableElement;->c:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/selection/ToggleableElement;->d:Landroidx/compose/ui/semantics/Role;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/selection/ToggleableElement;->e:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    if-nez p1, :cond_1

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_1
    const-class v0, Landroidx/compose/foundation/selection/ToggleableElement;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_2
    check-cast p1, Landroidx/compose/foundation/selection/ToggleableElement;

    .line 17
    .line 18
    iget-boolean v0, p0, Landroidx/compose/foundation/selection/ToggleableElement;->b:Z

    .line 19
    .line 20
    iget-boolean v1, p1, Landroidx/compose/foundation/selection/ToggleableElement;->b:Z

    .line 21
    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    iget-object v0, p0, Landroidx/compose/foundation/selection/ToggleableElement;->c:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 26
    .line 27
    iget-object v1, p1, Landroidx/compose/foundation/selection/ToggleableElement;->c:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    iget-object v0, p0, Landroidx/compose/foundation/selection/ToggleableElement;->d:Landroidx/compose/ui/semantics/Role;

    .line 37
    .line 38
    iget-object v1, p1, Landroidx/compose/foundation/selection/ToggleableElement;->d:Landroidx/compose/ui/semantics/Role;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/Role;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_5

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    iget-object p0, p0, Landroidx/compose/foundation/selection/ToggleableElement;->e:Lkotlin/jvm/functions/Function1;

    .line 48
    .line 49
    iget-object p1, p1, Landroidx/compose/foundation/selection/ToggleableElement;->e:Lkotlin/jvm/functions/Function1;

    .line 50
    .line 51
    if-eq p0, p1, :cond_6

    .line 52
    .line 53
    :goto_0
    const/4 p0, 0x0

    .line 54
    return p0

    .line 55
    :cond_6
    :goto_1
    const/4 p0, 0x1

    .line 56
    return p0
.end method

.method public final g()Landroidx/compose/ui/Modifier$Node;
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/foundation/selection/ToggleableNode;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/selection/ToggleableElement;->d:Landroidx/compose/ui/semantics/Role;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/selection/ToggleableElement;->e:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iget-boolean v3, p0, Landroidx/compose/foundation/selection/ToggleableElement;->b:Z

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/foundation/selection/ToggleableElement;->c:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 10
    .line 11
    invoke-direct {v0, v3, p0, v1, v2}, Landroidx/compose/foundation/selection/ToggleableNode;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/selection/ToggleableElement;->b:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    iget-object v3, p0, Landroidx/compose/foundation/selection/ToggleableElement;->c:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, v2

    .line 21
    :goto_0
    add-int/2addr v0, v3

    .line 22
    mul-int/lit16 v0, v0, 0x3c1

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Ljb;->b(IIZ)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-static {v0, v1, v2}, Ljb;->b(IIZ)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v2, p0, Landroidx/compose/foundation/selection/ToggleableElement;->d:Landroidx/compose/ui/semantics/Role;

    .line 34
    .line 35
    iget v2, v2, Landroidx/compose/ui/semantics/Role;->a:I

    .line 36
    .line 37
    invoke-static {v2, v0, v1}, Lq;->b(III)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-object p0, p0, Landroidx/compose/foundation/selection/ToggleableElement;->e:Lkotlin/jvm/functions/Function1;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    add-int/2addr p0, v0

    .line 48
    return p0
.end method

.method public final i(Landroidx/compose/ui/Modifier$Node;)V
    .locals 8

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroidx/compose/foundation/selection/ToggleableNode;

    .line 3
    .line 4
    iget-boolean p1, v0, Landroidx/compose/foundation/selection/ToggleableNode;->V:Z

    .line 5
    .line 6
    iget-boolean v1, p0, Landroidx/compose/foundation/selection/ToggleableElement;->b:Z

    .line 7
    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    .line 10
    iput-boolean v1, v0, Landroidx/compose/foundation/selection/ToggleableNode;->V:Z

    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->b(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Landroidx/compose/foundation/selection/ToggleableElement;->e:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    iput-object p1, v0, Landroidx/compose/foundation/selection/ToggleableNode;->W:Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    iget-object v7, v0, Landroidx/compose/foundation/selection/ToggleableNode;->X:Landroidx/compose/foundation/selection/a;

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/compose/foundation/selection/ToggleableElement;->c:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x1

    .line 27
    iget-object v6, p0, Landroidx/compose/foundation/selection/ToggleableElement;->d:Landroidx/compose/ui/semantics/Role;

    .line 28
    .line 29
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/foundation/AbstractClickableNode;->o1(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

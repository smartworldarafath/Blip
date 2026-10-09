.class final Landroidx/compose/animation/ZIndexModifierElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/animation/ZIndexModifierNode;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:F

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(FLjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/animation/ZIndexModifierElement;->b:F

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/animation/ZIndexModifierElement;->c:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/compose/animation/ZIndexModifierElement;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroidx/compose/animation/ZIndexModifierElement;

    .line 6
    .line 7
    iget v0, p1, Landroidx/compose/animation/ZIndexModifierElement;->b:F

    .line 8
    .line 9
    iget v1, p0, Landroidx/compose/animation/ZIndexModifierElement;->b:F

    .line 10
    .line 11
    cmpg-float v0, v0, v1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/compose/animation/ZIndexModifierElement;->c:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/compose/animation/ZIndexModifierElement;->c:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public final g()Landroidx/compose/ui/Modifier$Node;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/animation/ZIndexModifierNode;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Landroidx/compose/animation/ZIndexModifierElement;->b:F

    .line 7
    .line 8
    iput v1, v0, Landroidx/compose/animation/ZIndexModifierNode;->x:F

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/animation/ZIndexModifierElement;->c:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p0, v0, Landroidx/compose/animation/ZIndexModifierNode;->y:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/animation/ZIndexModifierElement;->b:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/animation/ZIndexModifierElement;->c:Ljava/lang/Object;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    add-int/2addr v0, p0

    .line 20
    return v0
.end method

.method public final i(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/compose/animation/ZIndexModifierNode;

    .line 2
    .line 3
    iget v0, p0, Landroidx/compose/animation/ZIndexModifierElement;->b:F

    .line 4
    .line 5
    iput v0, p1, Landroidx/compose/animation/ZIndexModifierNode;->x:F

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/animation/ZIndexModifierElement;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p0, p1, Landroidx/compose/animation/ZIndexModifierNode;->y:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

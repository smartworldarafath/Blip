.class final Landroidx/compose/ui/draw/PainterElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/draw/PainterNode;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Landroidx/compose/ui/Alignment;

.field public final c:Landroidx/compose/ui/layout/ContentScale;

.field public final d:F

.field public final e:Landroidx/compose/ui/graphics/ColorFilter;

.field private final painter:Landroidx/compose/ui/graphics/painter/Painter;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/draw/PainterElement;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/draw/PainterElement;->b:Landroidx/compose/ui/Alignment;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/ui/draw/PainterElement;->c:Landroidx/compose/ui/layout/ContentScale;

    .line 9
    .line 10
    iput p4, p0, Landroidx/compose/ui/draw/PainterElement;->d:F

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/ui/draw/PainterElement;->e:Landroidx/compose/ui/graphics/ColorFilter;

    .line 13
    .line 14
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
    instance-of v0, p1, Landroidx/compose/ui/draw/PainterElement;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Landroidx/compose/ui/draw/PainterElement;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/draw/PainterElement;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 12
    .line 13
    iget-object v1, p1, Landroidx/compose/ui/draw/PainterElement;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/draw/PainterElement;->b:Landroidx/compose/ui/Alignment;

    .line 23
    .line 24
    iget-object v1, p1, Landroidx/compose/ui/draw/PainterElement;->b:Landroidx/compose/ui/Alignment;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget-object v0, p0, Landroidx/compose/ui/draw/PainterElement;->c:Landroidx/compose/ui/layout/ContentScale;

    .line 34
    .line 35
    iget-object v1, p1, Landroidx/compose/ui/draw/PainterElement;->c:Landroidx/compose/ui/layout/ContentScale;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    iget v0, p0, Landroidx/compose/ui/draw/PainterElement;->d:F

    .line 45
    .line 46
    iget v1, p1, Landroidx/compose/ui/draw/PainterElement;->d:F

    .line 47
    .line 48
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    iget-object p0, p0, Landroidx/compose/ui/draw/PainterElement;->e:Landroidx/compose/ui/graphics/ColorFilter;

    .line 56
    .line 57
    iget-object p1, p1, Landroidx/compose/ui/draw/PainterElement;->e:Landroidx/compose/ui/graphics/ColorFilter;

    .line 58
    .line 59
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-nez p0, :cond_6

    .line 64
    .line 65
    :goto_0
    const/4 p0, 0x0

    .line 66
    return p0

    .line 67
    :cond_6
    :goto_1
    const/4 p0, 0x1

    .line 68
    return p0
.end method

.method public final g()Landroidx/compose/ui/Modifier$Node;
    .locals 6

    .line 1
    new-instance v0, Landroidx/compose/ui/draw/PainterNode;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/draw/PainterElement;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 4
    .line 5
    iget v4, p0, Landroidx/compose/ui/draw/PainterElement;->d:F

    .line 6
    .line 7
    iget-object v5, p0, Landroidx/compose/ui/draw/PainterElement;->e:Landroidx/compose/ui/graphics/ColorFilter;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/compose/ui/draw/PainterElement;->b:Landroidx/compose/ui/Alignment;

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/compose/ui/draw/PainterElement;->c:Landroidx/compose/ui/layout/ContentScale;

    .line 12
    .line 13
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/draw/PainterNode;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/draw/PainterElement;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

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
    const/4 v2, 0x1

    .line 11
    invoke-static {v0, v1, v2}, Ljb;->b(IIZ)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v2, p0, Landroidx/compose/ui/draw/PainterElement;->b:Landroidx/compose/ui/Alignment;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    add-int/2addr v2, v0

    .line 22
    mul-int/2addr v2, v1

    .line 23
    iget-object v0, p0, Landroidx/compose/ui/draw/PainterElement;->c:Landroidx/compose/ui/layout/ContentScale;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    add-int/2addr v0, v2

    .line 30
    mul-int/2addr v0, v1

    .line 31
    iget v2, p0, Landroidx/compose/ui/draw/PainterElement;->d:F

    .line 32
    .line 33
    invoke-static {v2, v0, v1}, Lq;->a(FII)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object p0, p0, Landroidx/compose/ui/draw/PainterElement;->e:Landroidx/compose/ui/graphics/ColorFilter;

    .line 38
    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    :goto_0
    add-int/2addr v0, p0

    .line 48
    return v0
.end method

.method public final i(Landroidx/compose/ui/Modifier$Node;)V
    .locals 4

    .line 1
    check-cast p1, Landroidx/compose/ui/draw/PainterNode;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/compose/ui/draw/PainterNode;->Y0()Landroidx/compose/ui/graphics/painter/Painter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/painter/Painter;->i()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-object v2, p0, Landroidx/compose/ui/draw/PainterElement;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/painter/Painter;->i()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Size;->a(JJ)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Landroidx/compose/ui/draw/PainterElement;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroidx/compose/ui/draw/PainterNode;->d1(Landroidx/compose/ui/graphics/painter/Painter;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroidx/compose/ui/draw/PainterElement;->b:Landroidx/compose/ui/Alignment;

    .line 30
    .line 31
    iput-object v1, p1, Landroidx/compose/ui/draw/PainterNode;->x:Landroidx/compose/ui/Alignment;

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/compose/ui/draw/PainterElement;->c:Landroidx/compose/ui/layout/ContentScale;

    .line 34
    .line 35
    iput-object v1, p1, Landroidx/compose/ui/draw/PainterNode;->y:Landroidx/compose/ui/layout/ContentScale;

    .line 36
    .line 37
    iget v1, p0, Landroidx/compose/ui/draw/PainterElement;->d:F

    .line 38
    .line 39
    iput v1, p1, Landroidx/compose/ui/draw/PainterNode;->z:F

    .line 40
    .line 41
    iget-object p0, p0, Landroidx/compose/ui/draw/PainterElement;->e:Landroidx/compose/ui/graphics/ColorFilter;

    .line 42
    .line 43
    iput-object p0, p1, Landroidx/compose/ui/draw/PainterNode;->A:Landroidx/compose/ui/graphics/ColorFilter;

    .line 44
    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    invoke-static {p1}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->a(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/draw/PainterElement;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "PainterElement(painter="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v0, ", sizeToIntrinsics=true, alignment="

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/ui/draw/PainterElement;->b:Landroidx/compose/ui/Alignment;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, ", contentScale="

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroidx/compose/ui/draw/PainterElement;->c:Landroidx/compose/ui/layout/ContentScale;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, ", alpha="

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v0, p0, Landroidx/compose/ui/draw/PainterElement;->d:F

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, ", colorFilter="

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Landroidx/compose/ui/draw/PainterElement;->e:Landroidx/compose/ui/graphics/ColorFilter;

    .line 49
    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, ")"

    .line 54
    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

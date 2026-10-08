.class final Landroidx/compose/ui/node/RulerTrackingMap;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public a:I

.field public b:[Landroidx/compose/ui/layout/Ruler;

.field public c:[F

.field public d:[B

.field public final e:Landroidx/collection/MutableScatterSet;

.field public final f:Landroidx/collection/MutableScatterSet;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x20

    .line 5
    .line 6
    new-array v1, v0, [Landroidx/compose/ui/layout/Ruler;

    .line 7
    .line 8
    iput-object v1, p0, Landroidx/compose/ui/node/RulerTrackingMap;->b:[Landroidx/compose/ui/layout/Ruler;

    .line 9
    .line 10
    new-array v1, v0, [F

    .line 11
    .line 12
    iput-object v1, p0, Landroidx/compose/ui/node/RulerTrackingMap;->c:[F

    .line 13
    .line 14
    new-array v0, v0, [B

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/compose/ui/node/RulerTrackingMap;->d:[B

    .line 17
    .line 18
    sget-object v0, Landroidx/collection/ScatterSetKt;->a:Landroidx/collection/MutableScatterSet;

    .line 19
    .line 20
    new-instance v0, Landroidx/collection/MutableScatterSet;

    .line 21
    .line 22
    invoke-direct {v0}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroidx/compose/ui/node/RulerTrackingMap;->e:Landroidx/collection/MutableScatterSet;

    .line 26
    .line 27
    new-instance v0, Landroidx/collection/MutableScatterSet;

    .line 28
    .line 29
    invoke-direct {v0}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Landroidx/compose/ui/node/RulerTrackingMap;->f:Landroidx/collection/MutableScatterSet;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/Ruler;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/RulerTrackingMap;->b:[Landroidx/compose/ui/layout/Ruler;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->t([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/node/RulerTrackingMap;->b:[Landroidx/compose/ui/layout/Ruler;

    .line 10
    .line 11
    add-int/lit8 v1, p1, 0x1

    .line 12
    .line 13
    iget v2, p0, Landroidx/compose/ui/node/RulerTrackingMap;->a:I

    .line 14
    .line 15
    invoke-static {p1, v1, v2, v0, v0}, Lkotlin/collections/ArraysKt;->g(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/ui/node/RulerTrackingMap;->b:[Landroidx/compose/ui/layout/Ruler;

    .line 19
    .line 20
    iget v2, p0, Landroidx/compose/ui/node/RulerTrackingMap;->a:I

    .line 21
    .line 22
    add-int/lit8 v3, v2, -0x1

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    aput-object v4, v0, v3

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/compose/ui/node/RulerTrackingMap;->c:[F

    .line 28
    .line 29
    sub-int/2addr v2, v1

    .line 30
    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroidx/compose/ui/node/RulerTrackingMap;->d:[B

    .line 34
    .line 35
    iget v2, p0, Landroidx/compose/ui/node/RulerTrackingMap;->a:I

    .line 36
    .line 37
    invoke-static {p1, v1, v2, v0, v0}, Lkotlin/collections/ArraysKt;->e(III[B[B)V

    .line 38
    .line 39
    .line 40
    iget p1, p0, Landroidx/compose/ui/node/RulerTrackingMap;->a:I

    .line 41
    .line 42
    add-int/lit8 p1, p1, -0x1

    .line 43
    .line 44
    iput p1, p0, Landroidx/compose/ui/node/RulerTrackingMap;->a:I

    .line 45
    .line 46
    :cond_0
    return-void
.end method

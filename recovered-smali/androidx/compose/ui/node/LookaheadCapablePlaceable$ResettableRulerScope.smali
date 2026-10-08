.class public final Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/layout/RulerScope;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/LookaheadCapablePlaceable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ResettableRulerScope"
.end annotation


# instance fields
.field public j:Z

.field public k:J

.field public l:J

.field public final synthetic m:Landroidx/compose/ui/node/LookaheadCapablePlaceable;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->m:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 5
    .line 6
    const-wide v0, 0x7fffffff7fffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    iput-wide v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->k:J

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    iput-wide v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->l:J

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/Ruler;F)V
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->m:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->z:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/ui/node/RulerTrackingMap;

    .line 8
    .line 9
    invoke-direct {v0}, Landroidx/compose/ui/node/RulerTrackingMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->z:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 13
    .line 14
    :cond_0
    iget-object p0, v0, Landroidx/compose/ui/node/RulerTrackingMap;->b:[Landroidx/compose/ui/layout/Ruler;

    .line 15
    .line 16
    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt;->t([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-gez p0, :cond_2

    .line 22
    .line 23
    iget p0, v0, Landroidx/compose/ui/node/RulerTrackingMap;->a:I

    .line 24
    .line 25
    iget-object v2, v0, Landroidx/compose/ui/node/RulerTrackingMap;->b:[Landroidx/compose/ui/layout/Ruler;

    .line 26
    .line 27
    array-length v3, v2

    .line 28
    if-ne p0, v3, :cond_1

    .line 29
    .line 30
    mul-int/lit8 v3, p0, 0x2

    .line 31
    .line 32
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, [Landroidx/compose/ui/layout/Ruler;

    .line 37
    .line 38
    iput-object v2, v0, Landroidx/compose/ui/node/RulerTrackingMap;->b:[Landroidx/compose/ui/layout/Ruler;

    .line 39
    .line 40
    iget-object v2, v0, Landroidx/compose/ui/node/RulerTrackingMap;->c:[F

    .line 41
    .line 42
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iput-object v2, v0, Landroidx/compose/ui/node/RulerTrackingMap;->c:[F

    .line 47
    .line 48
    iget-object v2, v0, Landroidx/compose/ui/node/RulerTrackingMap;->d:[B

    .line 49
    .line 50
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iput-object v2, v0, Landroidx/compose/ui/node/RulerTrackingMap;->d:[B

    .line 55
    .line 56
    :cond_1
    iget-object v2, v0, Landroidx/compose/ui/node/RulerTrackingMap;->b:[Landroidx/compose/ui/layout/Ruler;

    .line 57
    .line 58
    aput-object p1, v2, p0

    .line 59
    .line 60
    iget-object p1, v0, Landroidx/compose/ui/node/RulerTrackingMap;->d:[B

    .line 61
    .line 62
    const/4 v2, 0x3

    .line 63
    aput-byte v2, p1, p0

    .line 64
    .line 65
    iget-object p1, v0, Landroidx/compose/ui/node/RulerTrackingMap;->c:[F

    .line 66
    .line 67
    aput p2, p1, p0

    .line 68
    .line 69
    iget p0, v0, Landroidx/compose/ui/node/RulerTrackingMap;->a:I

    .line 70
    .line 71
    add-int/2addr p0, v1

    .line 72
    iput p0, v0, Landroidx/compose/ui/node/RulerTrackingMap;->a:I

    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    iget-object p1, v0, Landroidx/compose/ui/node/RulerTrackingMap;->c:[F

    .line 76
    .line 77
    aget v2, p1, p0

    .line 78
    .line 79
    cmpg-float v2, v2, p2

    .line 80
    .line 81
    if-nez v2, :cond_4

    .line 82
    .line 83
    iget-object p1, v0, Landroidx/compose/ui/node/RulerTrackingMap;->d:[B

    .line 84
    .line 85
    aget-byte p2, p1, p0

    .line 86
    .line 87
    const/4 v0, 0x2

    .line 88
    if-ne p2, v0, :cond_3

    .line 89
    .line 90
    const/4 p2, 0x0

    .line 91
    aput-byte p2, p1, p0

    .line 92
    .line 93
    :cond_3
    return-void

    .line 94
    :cond_4
    aput p2, p1, p0

    .line 95
    .line 96
    iget-object p1, v0, Landroidx/compose/ui/node/RulerTrackingMap;->d:[B

    .line 97
    .line 98
    aput-byte v1, p1, p0

    .line 99
    .line 100
    return-void
.end method

.method public final e0()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->m:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/unit/FontScaling;->e0()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getDensity()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->m:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

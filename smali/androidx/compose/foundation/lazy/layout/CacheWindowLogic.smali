.class public abstract Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/compose/foundation/pager/PagerState$pagerCacheWindow$1;

.field public final b:Landroidx/collection/MutableIntObjectMap;

.field public final c:Landroidx/collection/MutableIntSet;

.field public final d:Landroidx/collection/MutableIntIntMap;

.field public final e:Landroidx/collection/MutableIntObjectMap;

.field public f:F

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Z

.field public m:I


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState$pagerCacheWindow$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->a:Landroidx/compose/foundation/pager/PagerState$pagerCacheWindow$1;

    .line 5
    .line 6
    sget-object p1, Landroidx/collection/IntObjectMapKt;->a:Landroidx/collection/MutableIntObjectMap;

    .line 7
    .line 8
    new-instance p1, Landroidx/collection/MutableIntObjectMap;

    .line 9
    .line 10
    invoke-direct {p1}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->b:Landroidx/collection/MutableIntObjectMap;

    .line 14
    .line 15
    new-instance p1, Landroidx/collection/MutableIntSet;

    .line 16
    .line 17
    invoke-direct {p1}, Landroidx/collection/MutableIntSet;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->c:Landroidx/collection/MutableIntSet;

    .line 21
    .line 22
    sget p1, Landroidx/collection/IntIntMapKt;->a:I

    .line 23
    .line 24
    new-instance p1, Landroidx/collection/MutableIntIntMap;

    .line 25
    .line 26
    invoke-direct {p1}, Landroidx/collection/MutableIntIntMap;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->d:Landroidx/collection/MutableIntIntMap;

    .line 30
    .line 31
    new-instance p1, Landroidx/collection/MutableIntObjectMap;

    .line 32
    .line 33
    invoke-direct {p1}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->e:Landroidx/collection/MutableIntObjectMap;

    .line 37
    .line 38
    const/4 p1, -0x1

    .line 39
    iput p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->g:I

    .line 40
    .line 41
    const p1, 0x7fffffff

    .line 42
    .line 43
    .line 44
    iput p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    .line 45
    .line 46
    const/high16 p1, -0x80000000

    .line 47
    .line 48
    iput p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;IZ)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->e:Landroidx/collection/MutableIntObjectMap;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroidx/collection/IntObjectMap;->a(I)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    check-cast p0, Landroidx/compose/foundation/lazy/layout/CachedItem;

    .line 17
    .line 18
    iget p0, p0, Landroidx/compose/foundation/lazy/layout/CachedItem;->b:I

    .line 19
    .line 20
    return p0

    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->b:Landroidx/collection/MutableIntObjectMap;

    .line 22
    .line 23
    invoke-virtual {v0, p2}, Landroidx/collection/IntObjectMap;->a(I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    if-eqz p3, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0, p2}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/util/List;

    .line 37
    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    :goto_0
    if-ge v2, p1, :cond_2

    .line 45
    .line 46
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 51
    .line 52
    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->a()V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance v1, Lw4;

    .line 59
    .line 60
    invoke-direct {v1, p0, p1, v2}, Lw4;-><init>(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/lazy/layout/CacheWindowScope;I)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, p2, v1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->a(ILkotlin/jvm/functions/Function2;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v0, p2, p0}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    if-eqz p3, :cond_2

    .line 71
    .line 72
    invoke-virtual {v0, p2}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Ljava/util/List;

    .line 77
    .line 78
    if-eqz p0, :cond_2

    .line 79
    .line 80
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    :goto_1
    if-ge v2, p1, :cond_2

    .line 85
    .line 86
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    check-cast p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 91
    .line 92
    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->a()V

    .line 93
    .line 94
    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    const/4 p0, -0x1

    .line 99
    return p0
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    iget p0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 9
    .line 10
    const/high16 v0, -0x80000000

    .line 11
    .line 12
    if-eq p0, v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public final c(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->e:Landroidx/collection/MutableIntObjectMap;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroidx/compose/foundation/lazy/layout/CachedItem;

    .line 8
    .line 9
    sget-object v2, Landroidx/compose/foundation/lazy/layout/CachedItem;->c:Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iput p3, v1, Landroidx/compose/foundation/lazy/layout/CachedItem;->b:I

    .line 14
    .line 15
    iput-object v2, v1, Landroidx/compose/foundation/lazy/layout/CachedItem;->a:Ljava/lang/Object;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v1, Landroidx/compose/foundation/lazy/layout/CachedItem;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v2, v1, Landroidx/compose/foundation/lazy/layout/CachedItem;->a:Ljava/lang/Object;

    .line 24
    .line 25
    iput p3, v1, Landroidx/compose/foundation/lazy/layout/CachedItem;->b:I

    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, p2, v1}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 31
    .line 32
    if-le p2, v0, :cond_1

    .line 33
    .line 34
    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 35
    .line 36
    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    .line 37
    .line 38
    sub-int/2addr p2, p3

    .line 39
    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    .line 43
    .line 44
    if-ge p2, v0, :cond_2

    .line 45
    .line 46
    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    .line 47
    .line 48
    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    .line 49
    .line 50
    sub-int/2addr p2, p3

    .line 51
    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    .line 52
    .line 53
    :cond_2
    :goto_1
    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->f:F

    .line 54
    .line 55
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    const/4 p3, 0x0

    .line 60
    cmpg-float p2, p2, p3

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    const/4 v1, -0x1

    .line 64
    if-gtz p2, :cond_3

    .line 65
    .line 66
    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    .line 67
    .line 68
    if-lez p2, :cond_4

    .line 69
    .line 70
    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 71
    .line 72
    add-int/2addr p2, v0

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->f:F

    .line 75
    .line 76
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    cmpl-float p2, p2, p3

    .line 81
    .line 82
    if-lez p2, :cond_4

    .line 83
    .line 84
    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    .line 85
    .line 86
    if-lez p2, :cond_4

    .line 87
    .line 88
    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    .line 89
    .line 90
    sub-int/2addr p2, v0

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    move p2, v1

    .line 93
    :goto_2
    if-lez p2, :cond_5

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    if-eq p2, v1, :cond_5

    .line 99
    .line 100
    iget p3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->m:I

    .line 101
    .line 102
    if-ge p2, p3, :cond_5

    .line 103
    .line 104
    new-instance p3, Lw4;

    .line 105
    .line 106
    invoke-direct {p3, p0, p1, v0}, Lw4;-><init>(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/lazy/layout/CacheWindowScope;I)V

    .line 107
    .line 108
    .line 109
    invoke-interface {p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->a(ILkotlin/jvm/functions/Function2;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iget-object p3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->b:Landroidx/collection/MutableIntObjectMap;

    .line 114
    .line 115
    invoke-virtual {p3, p2, p1}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->g()V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final d(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;IIIIIFZ)V
    .locals 5

    .line 1
    invoke-static {p7}, Ljava/lang/Math;->signum(F)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->f:F

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    cmpg-float v0, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    move v0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    const/4 v3, 0x0

    .line 21
    const/4 v4, -0x1

    .line 22
    if-eqz p8, :cond_6

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l:Z

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    .line 32
    .line 33
    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    .line 34
    .line 35
    .line 36
    move-result p6

    .line 37
    invoke-static {p6}, Lkotlin/math/MathKt;->b(F)I

    .line 38
    .line 39
    .line 40
    move-result p6

    .line 41
    add-int/2addr p6, p2

    .line 42
    sub-int/2addr p4, p5

    .line 43
    if-le p6, p4, :cond_2

    .line 44
    .line 45
    move p6, p4

    .line 46
    :cond_2
    iput p6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    :goto_1
    sub-int/2addr p4, p5

    .line 50
    iput p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    .line 51
    .line 52
    iput p3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 53
    .line 54
    :goto_2
    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    .line 55
    .line 56
    if-lez p2, :cond_c

    .line 57
    .line 58
    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    if-eq p2, v4, :cond_c

    .line 64
    .line 65
    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 66
    .line 67
    iget p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->m:I

    .line 68
    .line 69
    sub-int/2addr p4, v2

    .line 70
    if-ge p2, p4, :cond_c

    .line 71
    .line 72
    add-int/lit8 p2, p2, 0x1

    .line 73
    .line 74
    add-int/lit8 p4, p3, 0x1

    .line 75
    .line 76
    if-ne p2, p4, :cond_5

    .line 77
    .line 78
    cmpg-float p2, p7, v3

    .line 79
    .line 80
    if-nez p2, :cond_4

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_4
    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    int-to-float p4, p5

    .line 88
    cmpl-float p2, p2, p4

    .line 89
    .line 90
    if-ltz p2, :cond_5

    .line 91
    .line 92
    move p2, v2

    .line 93
    goto :goto_4

    .line 94
    :cond_5
    :goto_3
    move p2, v1

    .line 95
    :goto_4
    iget p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 96
    .line 97
    add-int/2addr p4, v2

    .line 98
    invoke-virtual {p0, p1, p4, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->a(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;IZ)I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-eq p2, v4, :cond_c

    .line 103
    .line 104
    iget p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 105
    .line 106
    add-int/2addr p4, v2

    .line 107
    iput p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 108
    .line 109
    iget p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    .line 110
    .line 111
    sub-int/2addr p4, p2

    .line 112
    iput p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_6
    if-eqz v0, :cond_9

    .line 116
    .line 117
    iget-boolean p3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l:Z

    .line 118
    .line 119
    if-eqz p3, :cond_7

    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_7
    iget p3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    .line 123
    .line 124
    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    .line 125
    .line 126
    .line 127
    move-result p5

    .line 128
    invoke-static {p5}, Lkotlin/math/MathKt;->b(F)I

    .line 129
    .line 130
    .line 131
    move-result p5

    .line 132
    add-int/2addr p5, p3

    .line 133
    sub-int/2addr p4, p6

    .line 134
    if-le p5, p4, :cond_8

    .line 135
    .line 136
    move p5, p4

    .line 137
    :cond_8
    iput p5, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    .line 138
    .line 139
    goto :goto_6

    .line 140
    :cond_9
    :goto_5
    sub-int/2addr p4, p6

    .line 141
    iput p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    .line 142
    .line 143
    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    .line 144
    .line 145
    :goto_6
    iget p3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    .line 146
    .line 147
    if-lez p3, :cond_c

    .line 148
    .line 149
    iget p3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    .line 150
    .line 151
    if-lez p3, :cond_c

    .line 152
    .line 153
    add-int/lit8 p3, p3, -0x1

    .line 154
    .line 155
    add-int/lit8 p4, p2, -0x1

    .line 156
    .line 157
    if-ne p3, p4, :cond_b

    .line 158
    .line 159
    cmpg-float p3, p7, v3

    .line 160
    .line 161
    if-nez p3, :cond_a

    .line 162
    .line 163
    goto :goto_7

    .line 164
    :cond_a
    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    .line 165
    .line 166
    .line 167
    move-result p3

    .line 168
    int-to-float p4, p6

    .line 169
    cmpl-float p3, p3, p4

    .line 170
    .line 171
    if-ltz p3, :cond_b

    .line 172
    .line 173
    move p3, v2

    .line 174
    goto :goto_8

    .line 175
    :cond_b
    :goto_7
    move p3, v1

    .line 176
    :goto_8
    iget p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    .line 177
    .line 178
    sub-int/2addr p4, v2

    .line 179
    invoke-virtual {p0, p1, p4, p3}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->a(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;IZ)I

    .line 180
    .line 181
    .line 182
    move-result p3

    .line 183
    if-eq p3, v4, :cond_c

    .line 184
    .line 185
    iget p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    .line 186
    .line 187
    add-int/2addr p4, v4

    .line 188
    iput p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    .line 189
    .line 190
    iget p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    .line 191
    .line 192
    sub-int/2addr p4, p3

    .line 193
    iput p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    .line 194
    .line 195
    goto :goto_6

    .line 196
    :cond_c
    return-void
.end method

.method public final e(II)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->c:Landroidx/collection/MutableIntSet;

    .line 8
    .line 9
    invoke-virtual {v3}, Landroidx/collection/MutableIntSet;->c()V

    .line 10
    .line 11
    .line 12
    iget-object v4, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->b:Landroidx/collection/MutableIntObjectMap;

    .line 13
    .line 14
    iget-object v5, v4, Landroidx/collection/IntObjectMap;->b:[I

    .line 15
    .line 16
    iget-object v6, v4, Landroidx/collection/IntObjectMap;->a:[J

    .line 17
    .line 18
    array-length v7, v6

    .line 19
    add-int/lit8 v7, v7, -0x2

    .line 20
    .line 21
    const/16 v15, 0x8

    .line 22
    .line 23
    const/16 v16, 0x0

    .line 24
    .line 25
    if-ltz v7, :cond_3

    .line 26
    .line 27
    move/from16 v8, v16

    .line 28
    .line 29
    const-wide/16 v17, 0x80

    .line 30
    .line 31
    const-wide/16 v19, 0xff

    .line 32
    .line 33
    :goto_0
    aget-wide v10, v6, v8

    .line 34
    .line 35
    const/4 v9, 0x7

    .line 36
    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    not-long v12, v10

    .line 42
    shl-long/2addr v12, v9

    .line 43
    and-long/2addr v12, v10

    .line 44
    and-long v12, v12, v21

    .line 45
    .line 46
    cmp-long v12, v12, v21

    .line 47
    .line 48
    if-eqz v12, :cond_2

    .line 49
    .line 50
    sub-int v12, v8, v7

    .line 51
    .line 52
    not-int v12, v12

    .line 53
    ushr-int/lit8 v12, v12, 0x1f

    .line 54
    .line 55
    rsub-int/lit8 v12, v12, 0x8

    .line 56
    .line 57
    move/from16 v13, v16

    .line 58
    .line 59
    :goto_1
    if-ge v13, v12, :cond_1

    .line 60
    .line 61
    and-long v23, v10, v19

    .line 62
    .line 63
    cmp-long v14, v23, v17

    .line 64
    .line 65
    if-gez v14, :cond_0

    .line 66
    .line 67
    shl-int/lit8 v14, v8, 0x3

    .line 68
    .line 69
    add-int/2addr v14, v13

    .line 70
    aget v14, v5, v14

    .line 71
    .line 72
    if-gt v1, v14, :cond_0

    .line 73
    .line 74
    if-gt v14, v2, :cond_0

    .line 75
    .line 76
    invoke-virtual {v3, v14}, Landroidx/collection/MutableIntSet;->b(I)Z

    .line 77
    .line 78
    .line 79
    :cond_0
    shr-long/2addr v10, v15

    .line 80
    add-int/lit8 v13, v13, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    if-ne v12, v15, :cond_4

    .line 84
    .line 85
    :cond_2
    if-eq v8, v7, :cond_4

    .line 86
    .line 87
    add-int/lit8 v8, v8, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    const/4 v9, 0x7

    .line 91
    const-wide/16 v17, 0x80

    .line 92
    .line 93
    const-wide/16 v19, 0xff

    .line 94
    .line 95
    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    :cond_4
    iget-object v5, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->d:Landroidx/collection/MutableIntIntMap;

    .line 101
    .line 102
    iget-object v6, v5, Landroidx/collection/IntIntMap;->b:[I

    .line 103
    .line 104
    iget-object v7, v5, Landroidx/collection/IntIntMap;->a:[J

    .line 105
    .line 106
    array-length v8, v7

    .line 107
    add-int/lit8 v8, v8, -0x2

    .line 108
    .line 109
    if-ltz v8, :cond_9

    .line 110
    .line 111
    move/from16 v10, v16

    .line 112
    .line 113
    :goto_2
    aget-wide v11, v7, v10

    .line 114
    .line 115
    not-long v13, v11

    .line 116
    shl-long/2addr v13, v9

    .line 117
    and-long/2addr v13, v11

    .line 118
    and-long v13, v13, v21

    .line 119
    .line 120
    cmp-long v13, v13, v21

    .line 121
    .line 122
    if-eqz v13, :cond_8

    .line 123
    .line 124
    sub-int v13, v10, v8

    .line 125
    .line 126
    not-int v13, v13

    .line 127
    ushr-int/lit8 v13, v13, 0x1f

    .line 128
    .line 129
    rsub-int/lit8 v13, v13, 0x8

    .line 130
    .line 131
    move/from16 v14, v16

    .line 132
    .line 133
    :goto_3
    if-ge v14, v13, :cond_7

    .line 134
    .line 135
    and-long v23, v11, v19

    .line 136
    .line 137
    cmp-long v23, v23, v17

    .line 138
    .line 139
    if-gez v23, :cond_5

    .line 140
    .line 141
    shl-int/lit8 v23, v10, 0x3

    .line 142
    .line 143
    add-int v23, v23, v14

    .line 144
    .line 145
    move/from16 v24, v9

    .line 146
    .line 147
    aget v9, v6, v23

    .line 148
    .line 149
    if-gt v1, v9, :cond_6

    .line 150
    .line 151
    if-gt v9, v2, :cond_6

    .line 152
    .line 153
    invoke-virtual {v3, v9}, Landroidx/collection/MutableIntSet;->b(I)Z

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_5
    move/from16 v24, v9

    .line 158
    .line 159
    :cond_6
    :goto_4
    shr-long/2addr v11, v15

    .line 160
    add-int/lit8 v14, v14, 0x1

    .line 161
    .line 162
    move/from16 v9, v24

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_7
    move/from16 v24, v9

    .line 166
    .line 167
    if-ne v13, v15, :cond_a

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_8
    move/from16 v24, v9

    .line 171
    .line 172
    :goto_5
    if-eq v10, v8, :cond_a

    .line 173
    .line 174
    add-int/lit8 v10, v10, 0x1

    .line 175
    .line 176
    move/from16 v9, v24

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_9
    move/from16 v24, v9

    .line 180
    .line 181
    :cond_a
    iget-object v0, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->e:Landroidx/collection/MutableIntObjectMap;

    .line 182
    .line 183
    iget-object v6, v0, Landroidx/collection/IntObjectMap;->b:[I

    .line 184
    .line 185
    iget-object v7, v0, Landroidx/collection/IntObjectMap;->a:[J

    .line 186
    .line 187
    array-length v8, v7

    .line 188
    add-int/lit8 v8, v8, -0x2

    .line 189
    .line 190
    if-ltz v8, :cond_e

    .line 191
    .line 192
    move/from16 v9, v16

    .line 193
    .line 194
    :goto_6
    aget-wide v10, v7, v9

    .line 195
    .line 196
    not-long v12, v10

    .line 197
    shl-long v12, v12, v24

    .line 198
    .line 199
    and-long/2addr v12, v10

    .line 200
    and-long v12, v12, v21

    .line 201
    .line 202
    cmp-long v12, v12, v21

    .line 203
    .line 204
    if-eqz v12, :cond_d

    .line 205
    .line 206
    sub-int v12, v9, v8

    .line 207
    .line 208
    not-int v12, v12

    .line 209
    ushr-int/lit8 v12, v12, 0x1f

    .line 210
    .line 211
    rsub-int/lit8 v12, v12, 0x8

    .line 212
    .line 213
    move/from16 v13, v16

    .line 214
    .line 215
    :goto_7
    if-ge v13, v12, :cond_c

    .line 216
    .line 217
    and-long v25, v10, v19

    .line 218
    .line 219
    cmp-long v14, v25, v17

    .line 220
    .line 221
    if-gez v14, :cond_b

    .line 222
    .line 223
    shl-int/lit8 v14, v9, 0x3

    .line 224
    .line 225
    add-int/2addr v14, v13

    .line 226
    aget v14, v6, v14

    .line 227
    .line 228
    if-gt v1, v14, :cond_b

    .line 229
    .line 230
    if-gt v14, v2, :cond_b

    .line 231
    .line 232
    invoke-virtual {v3, v14}, Landroidx/collection/MutableIntSet;->b(I)Z

    .line 233
    .line 234
    .line 235
    :cond_b
    shr-long/2addr v10, v15

    .line 236
    add-int/lit8 v13, v13, 0x1

    .line 237
    .line 238
    goto :goto_7

    .line 239
    :cond_c
    if-ne v12, v15, :cond_e

    .line 240
    .line 241
    :cond_d
    if-eq v9, v8, :cond_e

    .line 242
    .line 243
    add-int/lit8 v9, v9, 0x1

    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_e
    iget-object v1, v3, Landroidx/collection/IntSet;->b:[I

    .line 247
    .line 248
    iget-object v2, v3, Landroidx/collection/IntSet;->a:[J

    .line 249
    .line 250
    array-length v3, v2

    .line 251
    add-int/lit8 v3, v3, -0x2

    .line 252
    .line 253
    if-ltz v3, :cond_14

    .line 254
    .line 255
    move/from16 v6, v16

    .line 256
    .line 257
    :goto_8
    aget-wide v7, v2, v6

    .line 258
    .line 259
    not-long v9, v7

    .line 260
    shl-long v9, v9, v24

    .line 261
    .line 262
    and-long/2addr v9, v7

    .line 263
    and-long v9, v9, v21

    .line 264
    .line 265
    cmp-long v9, v9, v21

    .line 266
    .line 267
    if-eqz v9, :cond_13

    .line 268
    .line 269
    sub-int v9, v6, v3

    .line 270
    .line 271
    not-int v9, v9

    .line 272
    ushr-int/lit8 v9, v9, 0x1f

    .line 273
    .line 274
    rsub-int/lit8 v9, v9, 0x8

    .line 275
    .line 276
    move/from16 v10, v16

    .line 277
    .line 278
    :goto_9
    if-ge v10, v9, :cond_12

    .line 279
    .line 280
    and-long v11, v7, v19

    .line 281
    .line 282
    cmp-long v11, v11, v17

    .line 283
    .line 284
    if-gez v11, :cond_11

    .line 285
    .line 286
    shl-int/lit8 v11, v6, 0x3

    .line 287
    .line 288
    add-int/2addr v11, v10

    .line 289
    aget v11, v1, v11

    .line 290
    .line 291
    invoke-virtual {v4, v11}, Landroidx/collection/MutableIntObjectMap;->g(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v12

    .line 295
    check-cast v12, Ljava/util/List;

    .line 296
    .line 297
    if-eqz v12, :cond_f

    .line 298
    .line 299
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    .line 300
    .line 301
    .line 302
    move-result v13

    .line 303
    move/from16 v14, v16

    .line 304
    .line 305
    :goto_a
    if-ge v14, v13, :cond_f

    .line 306
    .line 307
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v23

    .line 311
    check-cast v23, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 312
    .line 313
    invoke-interface/range {v23 .. v23}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    .line 314
    .line 315
    .line 316
    add-int/lit8 v14, v14, 0x1

    .line 317
    .line 318
    goto :goto_a

    .line 319
    :cond_f
    invoke-virtual {v5, v11}, Landroidx/collection/IntIntMap;->a(I)I

    .line 320
    .line 321
    .line 322
    move-result v12

    .line 323
    if-ltz v12, :cond_10

    .line 324
    .line 325
    iget v13, v5, Landroidx/collection/IntIntMap;->e:I

    .line 326
    .line 327
    add-int/lit8 v13, v13, -0x1

    .line 328
    .line 329
    iput v13, v5, Landroidx/collection/IntIntMap;->e:I

    .line 330
    .line 331
    iget-object v13, v5, Landroidx/collection/IntIntMap;->a:[J

    .line 332
    .line 333
    iget v14, v5, Landroidx/collection/IntIntMap;->d:I

    .line 334
    .line 335
    shr-int/lit8 v23, v12, 0x3

    .line 336
    .line 337
    and-int/lit8 v25, v12, 0x7

    .line 338
    .line 339
    shl-int/lit8 v25, v25, 0x3

    .line 340
    .line 341
    aget-wide v26, v13, v23

    .line 342
    .line 343
    move-object/from16 p0, v1

    .line 344
    .line 345
    move-object/from16 p1, v2

    .line 346
    .line 347
    shl-long v1, v19, v25

    .line 348
    .line 349
    not-long v1, v1

    .line 350
    and-long v1, v26, v1

    .line 351
    .line 352
    const-wide/16 v26, 0xfe

    .line 353
    .line 354
    shl-long v25, v26, v25

    .line 355
    .line 356
    or-long v1, v1, v25

    .line 357
    .line 358
    aput-wide v1, v13, v23

    .line 359
    .line 360
    add-int/lit8 v12, v12, -0x7

    .line 361
    .line 362
    and-int/2addr v12, v14

    .line 363
    and-int/lit8 v14, v14, 0x7

    .line 364
    .line 365
    add-int/2addr v12, v14

    .line 366
    shr-int/lit8 v12, v12, 0x3

    .line 367
    .line 368
    aput-wide v1, v13, v12

    .line 369
    .line 370
    goto :goto_b

    .line 371
    :cond_10
    move-object/from16 p0, v1

    .line 372
    .line 373
    move-object/from16 p1, v2

    .line 374
    .line 375
    :goto_b
    invoke-virtual {v0, v11}, Landroidx/collection/MutableIntObjectMap;->g(I)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    goto :goto_c

    .line 379
    :cond_11
    move-object/from16 p0, v1

    .line 380
    .line 381
    move-object/from16 p1, v2

    .line 382
    .line 383
    :goto_c
    shr-long/2addr v7, v15

    .line 384
    add-int/lit8 v10, v10, 0x1

    .line 385
    .line 386
    move-object/from16 v1, p0

    .line 387
    .line 388
    move-object/from16 v2, p1

    .line 389
    .line 390
    goto :goto_9

    .line 391
    :cond_12
    move-object/from16 p0, v1

    .line 392
    .line 393
    move-object/from16 p1, v2

    .line 394
    .line 395
    if-ne v9, v15, :cond_14

    .line 396
    .line 397
    goto :goto_d

    .line 398
    :cond_13
    move-object/from16 p0, v1

    .line 399
    .line 400
    move-object/from16 p1, v2

    .line 401
    .line 402
    :goto_d
    if-eq v6, v3, :cond_14

    .line 403
    .line 404
    add-int/lit8 v6, v6, 0x1

    .line 405
    .line 406
    move-object/from16 v1, p0

    .line 407
    .line 408
    move-object/from16 v2, p1

    .line 409
    .line 410
    goto/16 :goto_8

    .line 411
    .line 412
    :cond_14
    return-void
.end method

.method public final f()V
    .locals 14

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    .line 5
    .line 6
    const/high16 v0, -0x80000000

    .line 7
    .line 8
    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    .line 12
    .line 13
    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    .line 14
    .line 15
    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l:Z

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->d:Landroidx/collection/MutableIntIntMap;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/collection/MutableIntIntMap;->c()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->e:Landroidx/collection/MutableIntObjectMap;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/collection/MutableIntObjectMap;->c()V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->b:Landroidx/collection/MutableIntObjectMap;

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/collection/IntObjectMap;->a:[J

    .line 30
    .line 31
    array-length v2, v1

    .line 32
    add-int/lit8 v2, v2, -0x2

    .line 33
    .line 34
    if-ltz v2, :cond_4

    .line 35
    .line 36
    move v3, v0

    .line 37
    :goto_0
    aget-wide v4, v1, v3

    .line 38
    .line 39
    not-long v6, v4

    .line 40
    const/4 v8, 0x7

    .line 41
    shl-long/2addr v6, v8

    .line 42
    and-long/2addr v6, v4

    .line 43
    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    and-long/2addr v6, v8

    .line 49
    cmp-long v6, v6, v8

    .line 50
    .line 51
    if-eqz v6, :cond_3

    .line 52
    .line 53
    sub-int v6, v3, v2

    .line 54
    .line 55
    not-int v6, v6

    .line 56
    ushr-int/lit8 v6, v6, 0x1f

    .line 57
    .line 58
    const/16 v7, 0x8

    .line 59
    .line 60
    rsub-int/lit8 v6, v6, 0x8

    .line 61
    .line 62
    move v8, v0

    .line 63
    :goto_1
    if-ge v8, v6, :cond_2

    .line 64
    .line 65
    const-wide/16 v9, 0xff

    .line 66
    .line 67
    and-long/2addr v9, v4

    .line 68
    const-wide/16 v11, 0x80

    .line 69
    .line 70
    cmp-long v9, v9, v11

    .line 71
    .line 72
    if-gez v9, :cond_1

    .line 73
    .line 74
    shl-int/lit8 v9, v3, 0x3

    .line 75
    .line 76
    add-int/2addr v9, v8

    .line 77
    iget-object v10, p0, Landroidx/collection/IntObjectMap;->b:[I

    .line 78
    .line 79
    aget v10, v10, v9

    .line 80
    .line 81
    iget-object v10, p0, Landroidx/collection/IntObjectMap;->c:[Ljava/lang/Object;

    .line 82
    .line 83
    aget-object v10, v10, v9

    .line 84
    .line 85
    check-cast v10, Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    move v12, v0

    .line 92
    :goto_2
    if-ge v12, v11, :cond_0

    .line 93
    .line 94
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v13

    .line 98
    check-cast v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 99
    .line 100
    invoke-interface {v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    .line 101
    .line 102
    .line 103
    add-int/lit8 v12, v12, 0x1

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_0
    invoke-virtual {p0, v9}, Landroidx/collection/MutableIntObjectMap;->h(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    :cond_1
    shr-long/2addr v4, v7

    .line 110
    add-int/lit8 v8, v8, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    if-ne v6, v7, :cond_4

    .line 114
    .line 115
    :cond_3
    if-eq v3, v2, :cond_4

    .line 116
    .line 117
    add-int/lit8 v3, v3, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_4
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const-string v2, "prefetchWindowStartExtraSpace"

    .line 5
    .line 6
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/util/AndroidTrace_androidKt;->a(JLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    .line 10
    .line 11
    int-to-long v0, v0

    .line 12
    const-string v2, "prefetchWindowEndExtraSpace"

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/util/AndroidTrace_androidKt;->a(JLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    .line 18
    .line 19
    int-to-long v0, v0

    .line 20
    const-string v2, "prefetchWindowStartIndex"

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/util/AndroidTrace_androidKt;->a(JLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget p0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 26
    .line 27
    int-to-long v0, p0

    .line 28
    const-string p0, "prefetchWindowEndIndex"

    .line 29
    .line 30
    invoke-static {v0, v1, p0}, Landroidx/compose/ui/util/AndroidTrace_androidKt;->a(JLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

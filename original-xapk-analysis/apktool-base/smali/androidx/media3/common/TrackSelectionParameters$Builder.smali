.class public Landroidx/media3/common/TrackSelectionParameters$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/TrackSelectionParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Lcom/google/common/collect/ImmutableList;

.field public j:Lcom/google/common/collect/ImmutableList;

.field public k:Lcom/google/common/collect/ImmutableList;

.field public l:Lcom/google/common/collect/ImmutableList;

.field public m:Lcom/google/common/collect/ImmutableList;

.field public n:I

.field public o:I

.field public p:Lcom/google/common/collect/ImmutableList;

.field public q:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

.field public r:Lcom/google/common/collect/ImmutableList;

.field public s:Z

.field public t:Lcom/google/common/collect/ImmutableList;

.field public u:I

.field public v:Ljava/util/HashMap;

.field public w:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7fffffff

    .line 5
    .line 6
    .line 7
    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->a:I

    .line 8
    .line 9
    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->b:I

    .line 10
    .line 11
    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->c:I

    .line 12
    .line 13
    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->d:I

    .line 14
    .line 15
    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->e:I

    .line 16
    .line 17
    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->f:I

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->g:Z

    .line 21
    .line 22
    iput-boolean v1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->h:Z

    .line 23
    .line 24
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iput-object v2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->i:Lcom/google/common/collect/ImmutableList;

    .line 29
    .line 30
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iput-object v2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->j:Lcom/google/common/collect/ImmutableList;

    .line 35
    .line 36
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iput-object v2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->k:Lcom/google/common/collect/ImmutableList;

    .line 41
    .line 42
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iput-object v2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->l:Lcom/google/common/collect/ImmutableList;

    .line 47
    .line 48
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iput-object v2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->m:Lcom/google/common/collect/ImmutableList;

    .line 53
    .line 54
    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->n:I

    .line 55
    .line 56
    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->o:I

    .line 57
    .line 58
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->p:Lcom/google/common/collect/ImmutableList;

    .line 63
    .line 64
    sget-object v0, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->a:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    .line 65
    .line 66
    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->q:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    .line 67
    .line 68
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->r:Lcom/google/common/collect/ImmutableList;

    .line 73
    .line 74
    iput-boolean v1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->s:Z

    .line 75
    .line 76
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->t:Lcom/google/common/collect/ImmutableList;

    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->u:I

    .line 84
    .line 85
    new-instance v0, Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->v:Ljava/util/HashMap;

    .line 91
    .line 92
    new-instance v0, Ljava/util/HashSet;

    .line 93
    .line 94
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->w:Ljava/util/HashSet;

    .line 98
    .line 99
    return-void
.end method


# virtual methods
.method public a()Landroidx/media3/common/TrackSelectionParameters;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/common/TrackSelectionParameters;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/media3/common/TrackSelectionParameters;-><init>(Landroidx/media3/common/TrackSelectionParameters$Builder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public b(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->v:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/media3/common/TrackSelectionOverride;

    .line 22
    .line 23
    iget-object v1, v1, Landroidx/media3/common/TrackSelectionOverride;->a:Landroidx/media3/common/TrackGroup;

    .line 24
    .line 25
    iget v1, v1, Landroidx/media3/common/TrackGroup;->c:I

    .line 26
    .line 27
    if-ne v1, p1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-object p0
.end method

.method public final c(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 2

    .line 1
    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->a:I

    .line 2
    .line 3
    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->a:I

    .line 4
    .line 5
    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->b:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->b:I

    .line 8
    .line 9
    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->c:I

    .line 10
    .line 11
    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->c:I

    .line 12
    .line 13
    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->d:I

    .line 14
    .line 15
    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->d:I

    .line 16
    .line 17
    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->e:I

    .line 18
    .line 19
    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->e:I

    .line 20
    .line 21
    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->f:I

    .line 22
    .line 23
    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->f:I

    .line 24
    .line 25
    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters;->g:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->g:Z

    .line 28
    .line 29
    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters;->h:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->h:Z

    .line 32
    .line 33
    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->j:Lcom/google/common/collect/ImmutableList;

    .line 34
    .line 35
    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->j:Lcom/google/common/collect/ImmutableList;

    .line 36
    .line 37
    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->i:Lcom/google/common/collect/ImmutableList;

    .line 38
    .line 39
    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->i:Lcom/google/common/collect/ImmutableList;

    .line 40
    .line 41
    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->k:Lcom/google/common/collect/ImmutableList;

    .line 42
    .line 43
    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->k:Lcom/google/common/collect/ImmutableList;

    .line 44
    .line 45
    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->l:Lcom/google/common/collect/ImmutableList;

    .line 46
    .line 47
    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->l:Lcom/google/common/collect/ImmutableList;

    .line 48
    .line 49
    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->m:Lcom/google/common/collect/ImmutableList;

    .line 50
    .line 51
    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->m:Lcom/google/common/collect/ImmutableList;

    .line 52
    .line 53
    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->n:I

    .line 54
    .line 55
    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->n:I

    .line 56
    .line 57
    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->o:I

    .line 58
    .line 59
    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->o:I

    .line 60
    .line 61
    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->p:Lcom/google/common/collect/ImmutableList;

    .line 62
    .line 63
    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->p:Lcom/google/common/collect/ImmutableList;

    .line 64
    .line 65
    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->q:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    .line 66
    .line 67
    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->q:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    .line 68
    .line 69
    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->r:Lcom/google/common/collect/ImmutableList;

    .line 70
    .line 71
    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->r:Lcom/google/common/collect/ImmutableList;

    .line 72
    .line 73
    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters;->t:Z

    .line 74
    .line 75
    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->s:Z

    .line 76
    .line 77
    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->s:Lcom/google/common/collect/ImmutableList;

    .line 78
    .line 79
    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->t:Lcom/google/common/collect/ImmutableList;

    .line 80
    .line 81
    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->u:I

    .line 82
    .line 83
    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->u:I

    .line 84
    .line 85
    new-instance v0, Ljava/util/HashSet;

    .line 86
    .line 87
    iget-object v1, p1, Landroidx/media3/common/TrackSelectionParameters;->w:Lcom/google/common/collect/ImmutableSet;

    .line 88
    .line 89
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->w:Ljava/util/HashSet;

    .line 93
    .line 94
    new-instance v0, Ljava/util/HashMap;

    .line 95
    .line 96
    iget-object p1, p1, Landroidx/media3/common/TrackSelectionParameters;->v:Lcom/google/common/collect/ImmutableMap;

    .line 97
    .line 98
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 99
    .line 100
    .line 101
    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->v:Ljava/util/HashMap;

    .line 102
    .line 103
    return-void
.end method

.method public d()Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->u:I

    .line 3
    .line 4
    return-object p0
.end method

.method public e(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/media3/common/TrackSelectionOverride;->a:Landroidx/media3/common/TrackGroup;

    .line 2
    .line 3
    iget v1, v0, Landroidx/media3/common/TrackGroup;->c:I

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->b(I)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->v:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public f()Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->g([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public varargs g([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->k()Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, p1

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v3, v1, :cond_0

    .line 9
    .line 10
    aget-object v4, p1, v3

    .line 11
    .line 12
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {v4}, Landroidx/media3/common/util/Util;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableList$Builder;->d(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->i()Lcom/google/common/collect/ImmutableList;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->r:Lcom/google/common/collect/ImmutableList;

    .line 30
    .line 31
    iput-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->s:Z

    .line 32
    .line 33
    return-object p0
.end method

.method public h()Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->s:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public i(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->w:Ljava/util/HashSet;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

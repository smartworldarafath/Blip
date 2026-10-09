.class final Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateHolder"
.end annotation


# instance fields
.field public final b:Landroidx/collection/MutableScatterMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/collection/ScatterMapKt;->a:[J

    .line 5
    .line 6
    new-instance v0, Landroidx/collection/MutableScatterMap;

    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;->b:Landroidx/collection/MutableScatterMap;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 14

    .line 1
    iget-object p0, p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;->b:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/collection/ScatterMap;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroidx/collection/ScatterMapKt;->b:Landroidx/collection/MutableScatterMap;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Landroidx/collection/MutableScatterMap;

    .line 16
    .line 17
    iget v1, p0, Landroidx/collection/ScatterMap;->e:I

    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroidx/collection/MutableScatterMap;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Landroidx/collection/MutableScatterMap;->l(Landroidx/collection/ScatterMap;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object v1, v0, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v0, v0, Landroidx/collection/ScatterMap;->a:[J

    .line 28
    .line 29
    array-length v2, v0

    .line 30
    add-int/lit8 v2, v2, -0x2

    .line 31
    .line 32
    if-ltz v2, :cond_4

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    move v4, v3

    .line 36
    :goto_1
    aget-wide v5, v0, v4

    .line 37
    .line 38
    not-long v7, v5

    .line 39
    const/4 v9, 0x7

    .line 40
    shl-long/2addr v7, v9

    .line 41
    and-long/2addr v7, v5

    .line 42
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    and-long/2addr v7, v9

    .line 48
    cmp-long v7, v7, v9

    .line 49
    .line 50
    if-eqz v7, :cond_3

    .line 51
    .line 52
    sub-int v7, v4, v2

    .line 53
    .line 54
    not-int v7, v7

    .line 55
    ushr-int/lit8 v7, v7, 0x1f

    .line 56
    .line 57
    const/16 v8, 0x8

    .line 58
    .line 59
    rsub-int/lit8 v7, v7, 0x8

    .line 60
    .line 61
    move v9, v3

    .line 62
    :goto_2
    if-ge v9, v7, :cond_2

    .line 63
    .line 64
    const-wide/16 v10, 0xff

    .line 65
    .line 66
    and-long/2addr v10, v5

    .line 67
    const-wide/16 v12, 0x80

    .line 68
    .line 69
    cmp-long v10, v10, v12

    .line 70
    .line 71
    if-gez v10, :cond_1

    .line 72
    .line 73
    shl-int/lit8 v10, v4, 0x3

    .line 74
    .line 75
    add-int/2addr v10, v9

    .line 76
    aget-object v10, v1, v10

    .line 77
    .line 78
    check-cast v10, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;

    .line 79
    .line 80
    const/4 v11, 0x1

    .line 81
    iput-boolean v11, v10, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;->c:Z

    .line 82
    .line 83
    iget-object v10, v10, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;->a:Ljava/lang/Object;

    .line 84
    .line 85
    invoke-virtual {p0, v10}, Landroidx/collection/MutableScatterMap;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    check-cast v10, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;

    .line 90
    .line 91
    if-eqz v10, :cond_1

    .line 92
    .line 93
    iget-object v10, v10, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;->b:Landroidx/lifecycle/ViewModelStore;

    .line 94
    .line 95
    if-eqz v10, :cond_1

    .line 96
    .line 97
    invoke-virtual {v10}, Landroidx/lifecycle/ViewModelStore;->a()V

    .line 98
    .line 99
    .line 100
    :cond_1
    shr-long/2addr v5, v8

    .line 101
    add-int/lit8 v9, v9, 0x1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    if-ne v7, v8, :cond_4

    .line 105
    .line 106
    :cond_3
    if-eq v4, v2, :cond_4

    .line 107
    .line 108
    add-int/lit8 v4, v4, 0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    return-void
.end method

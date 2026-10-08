.class final Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;
.implements Landroidx/compose/foundation/lazy/layout/PrefetchRequest;
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HandleAndRequestImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;

.field public final c:Lkotlin/jvm/functions/Function1;

.field public d:Landroidx/compose/ui/unit/Constraints;

.field public e:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

.field public f:Landroidx/compose/ui/layout/SubcomposeLayoutState$PausedPrecomposition;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/Object;

.field public k:Z

.field public l:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;

.field public m:Z

.field public n:J

.field public o:J

.field public p:J

.field public q:Z

.field public final synthetic r:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;ILandroidx/compose/foundation/lazy/layout/PrefetchMetrics;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->r:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->a:I

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->b:Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->c:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    invoke-static {}, Lkotlin/time/MonotonicTimeSource;->a()J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->p:J

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->m:Z

    .line 3
    .line 4
    return-void
.end method

.method public final b(I)J
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->e:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;->b(I)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0

    .line 10
    :cond_0
    const-wide/16 p0, 0x0

    .line 11
    .line 12
    return-wide p0
.end method

.method public final c()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->e:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;->c()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->h:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->d()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->f:Landroidx/compose/ui/layout/SubcomposeLayoutState$PausedPrecomposition;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PausedPrecomposition;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->f:Landroidx/compose/ui/layout/SubcomposeLayoutState$PausedPrecomposition;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->e:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v1}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;->a()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->e:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->l:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;

    .line 21
    .line 22
    return-void
.end method

.method public final e(Landroidx/compose/foundation/lazy/layout/PrefetchRequestScope;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->r:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;->d:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->m:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string v0, "compose:lazy:prefetch:execute:urgent"

    .line 14
    .line 15
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->f(Landroidx/compose/foundation/lazy/layout/PrefetchRequestScope;)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->f(Landroidx/compose/foundation/lazy/layout/PrefetchRequestScope;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    :goto_0
    const-string p1, "compose:lazy:prefetch:execute:item"

    .line 36
    .line 37
    const-wide/16 v0, -0x1

    .line 38
    .line 39
    invoke-static {v0, v1, p1}, Landroidx/compose/ui/util/AndroidTrace_androidKt;->a(JLjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return p0
.end method

.method public final f(Landroidx/compose/foundation/lazy/layout/PrefetchRequestScope;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->a:I

    .line 4
    .line 5
    int-to-long v2, v1

    .line 6
    const-string v4, "compose:lazy:prefetch:execute:item"

    .line 7
    .line 8
    invoke-static {v2, v3, v4}, Landroidx/compose/ui/util/AndroidTrace_androidKt;->a(JLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v5, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->r:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;

    .line 12
    .line 13
    iget-object v5, v5, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;->a:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 14
    .line 15
    iget-object v5, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->b:Lo1;

    .line 16
    .line 17
    invoke-virtual {v5}, Lo1;->a()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    .line 22
    .line 23
    iget-boolean v6, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->h:Z

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    if-nez v6, :cond_23

    .line 27
    .line 28
    invoke-interface {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->a()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-ltz v1, :cond_23

    .line 33
    .line 34
    if-ge v1, v6, :cond_23

    .line 35
    .line 36
    invoke-interface {v5, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->b(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    iget-object v8, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->j:Ljava/lang/Object;

    .line 41
    .line 42
    if-eqz v8, :cond_0

    .line 43
    .line 44
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-nez v8, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->d()V

    .line 51
    .line 52
    .line 53
    return v7

    .line 54
    :cond_0
    invoke-interface {v5, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->c(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v5, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->b:Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;

    .line 59
    .line 60
    iget-object v8, v5, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->c:Landroidx/compose/foundation/lazy/layout/Averages;

    .line 61
    .line 62
    iget-object v9, v5, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->b:Ljava/lang/Object;

    .line 63
    .line 64
    const/4 v10, -0x1

    .line 65
    if-ne v9, v1, :cond_1

    .line 66
    .line 67
    if-eqz v8, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object v8, v5, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->a:Landroidx/collection/MutableScatterMap;

    .line 71
    .line 72
    invoke-virtual {v8, v1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    if-nez v9, :cond_2

    .line 77
    .line 78
    new-instance v9, Landroidx/compose/foundation/lazy/layout/Averages;

    .line 79
    .line 80
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    iput v10, v9, Landroidx/compose/foundation/lazy/layout/Averages;->e:I

    .line 84
    .line 85
    invoke-virtual {v8, v1, v9}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    move-object v8, v9

    .line 89
    check-cast v8, Landroidx/compose/foundation/lazy/layout/Averages;

    .line 90
    .line 91
    iput-object v1, v5, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->b:Ljava/lang/Object;

    .line 92
    .line 93
    iput-object v8, v5, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->c:Landroidx/compose/foundation/lazy/layout/Averages;

    .line 94
    .line 95
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->g()Z

    .line 96
    .line 97
    .line 98
    move-object/from16 v5, p1

    .line 99
    .line 100
    check-cast v5, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler$PrefetchRequestScopeImpl;

    .line 101
    .line 102
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler$PrefetchRequestScopeImpl;->a()J

    .line 103
    .line 104
    .line 105
    move-result-wide v11

    .line 106
    iput-wide v11, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->n:J

    .line 107
    .line 108
    invoke-static {}, Lkotlin/time/MonotonicTimeSource;->a()J

    .line 109
    .line 110
    .line 111
    move-result-wide v13

    .line 112
    iput-wide v13, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->p:J

    .line 113
    .line 114
    const-wide/16 v13, 0x0

    .line 115
    .line 116
    iput-wide v13, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->o:J

    .line 117
    .line 118
    const-string v9, "compose:lazy:prefetch:available_time_nanos"

    .line 119
    .line 120
    invoke-static {v11, v12, v9}, Landroidx/compose/ui/util/AndroidTrace_androidKt;->a(JLjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->g()Z

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    move-wide v15, v13

    .line 128
    if-nez v9, :cond_5

    .line 129
    .line 130
    iget-wide v13, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->n:J

    .line 131
    .line 132
    iget-wide v10, v8, Landroidx/compose/foundation/lazy/layout/Averages;->a:J

    .line 133
    .line 134
    move-wide/from16 v17, v10

    .line 135
    .line 136
    iget-wide v9, v8, Landroidx/compose/foundation/lazy/layout/Averages;->b:J

    .line 137
    .line 138
    add-long v10, v17, v9

    .line 139
    .line 140
    invoke-virtual {v0, v13, v14, v10, v11}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->i(JJ)Z

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    if-eqz v9, :cond_3

    .line 145
    .line 146
    const-string v9, "compose:lazy:prefetch:compose"

    .line 147
    .line 148
    invoke-static {v9}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :try_start_0
    invoke-virtual {v0, v6, v1, v8}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->h(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/lazy/layout/Averages;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .line 153
    .line 154
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :catchall_0
    move-exception v0

    .line 159
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 160
    .line 161
    .line 162
    throw v0

    .line 163
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->g()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-nez v1, :cond_5

    .line 168
    .line 169
    :cond_4
    const/4 v13, 0x1

    .line 170
    goto/16 :goto_e

    .line 171
    .line 172
    :cond_5
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->f:Landroidx/compose/ui/layout/SubcomposeLayoutState$PausedPrecomposition;

    .line 173
    .line 174
    const/4 v6, 0x0

    .line 175
    if-eqz v1, :cond_7

    .line 176
    .line 177
    iget-wide v9, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->n:J

    .line 178
    .line 179
    iget-wide v13, v8, Landroidx/compose/foundation/lazy/layout/Averages;->c:J

    .line 180
    .line 181
    invoke-virtual {v0, v9, v10, v13, v14}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->i(JJ)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_4

    .line 186
    .line 187
    const-string v1, "compose:lazy:prefetch:apply"

    .line 188
    .line 189
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :try_start_1
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->f:Landroidx/compose/ui/layout/SubcomposeLayoutState$PausedPrecomposition;

    .line 193
    .line 194
    if-eqz v1, :cond_6

    .line 195
    .line 196
    invoke-interface {v1}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PausedPrecomposition;->apply()Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    iput-object v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->e:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    .line 201
    .line 202
    iput-object v6, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->f:Landroidx/compose/ui/layout/SubcomposeLayoutState$PausedPrecomposition;

    .line 203
    .line 204
    const/4 v1, 0x1

    .line 205
    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 206
    .line 207
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->j()V

    .line 211
    .line 212
    .line 213
    iget-wide v9, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->o:J

    .line 214
    .line 215
    iget-wide v13, v8, Landroidx/compose/foundation/lazy/layout/Averages;->c:J

    .line 216
    .line 217
    invoke-static {v9, v10, v13, v14}, Landroidx/compose/foundation/lazy/layout/Averages;->a(JJ)J

    .line 218
    .line 219
    .line 220
    move-result-wide v9

    .line 221
    iput-wide v9, v8, Landroidx/compose/foundation/lazy/layout/Averages;->c:J

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_6
    :try_start_2
    const-string v0, "Nothing to apply!"

    .line 225
    .line 226
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 227
    .line 228
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 232
    :catchall_1
    move-exception v0

    .line 233
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 234
    .line 235
    .line 236
    throw v0

    .line 237
    :cond_7
    :goto_2
    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->k:Z

    .line 238
    .line 239
    if-nez v1, :cond_a

    .line 240
    .line 241
    iget-wide v9, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->n:J

    .line 242
    .line 243
    cmp-long v1, v9, v15

    .line 244
    .line 245
    if-lez v1, :cond_4

    .line 246
    .line 247
    const-string v1, "compose:lazy:prefetch:resolve-nested"

    .line 248
    .line 249
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    :try_start_3
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->e:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    .line 253
    .line 254
    if-eqz v1, :cond_9

    .line 255
    .line 256
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 257
    .line 258
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 259
    .line 260
    .line 261
    new-instance v10, Landroidx/compose/foundation/lazy/layout/b;

    .line 262
    .line 263
    const/4 v11, 0x2

    .line 264
    invoke-direct {v10, v11, v9}, Landroidx/compose/foundation/lazy/layout/b;-><init>(ILjava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    invoke-interface {v1, v10}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;->d(Landroidx/compose/foundation/lazy/layout/b;)V

    .line 268
    .line 269
    .line 270
    iget-object v1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v1, Ljava/util/List;

    .line 273
    .line 274
    if-eqz v1, :cond_8

    .line 275
    .line 276
    new-instance v9, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;

    .line 277
    .line 278
    invoke-direct {v9, v0, v1}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;-><init>(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;Ljava/util/List;)V

    .line 279
    .line 280
    .line 281
    goto :goto_3

    .line 282
    :cond_8
    move-object v9, v6

    .line 283
    :goto_3
    iput-object v9, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->l:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;

    .line 284
    .line 285
    const/4 v1, 0x1

    .line 286
    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->k:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 287
    .line 288
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 289
    .line 290
    .line 291
    goto :goto_5

    .line 292
    :catchall_2
    move-exception v0

    .line 293
    goto :goto_4

    .line 294
    :cond_9
    :try_start_4
    const-string v0, "Should precompose before resolving nested prefetch states"

    .line 295
    .line 296
    invoke-static {v0}, Lq;->C(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 301
    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 302
    .line 303
    .line 304
    throw v0

    .line 305
    :cond_a
    :goto_5
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->l:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;

    .line 306
    .line 307
    if-eqz v1, :cond_16

    .line 308
    .line 309
    iget v9, v8, Landroidx/compose/foundation/lazy/layout/Averages;->e:I

    .line 310
    .line 311
    iget-boolean v10, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->m:Z

    .line 312
    .line 313
    iget-object v11, v1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->b:[Ljava/util/List;

    .line 314
    .line 315
    iget v13, v1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->c:I

    .line 316
    .line 317
    iget-object v14, v1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->a:Ljava/util/List;

    .line 318
    .line 319
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 320
    .line 321
    .line 322
    move-result v6

    .line 323
    if-lt v13, v6, :cond_b

    .line 324
    .line 325
    goto/16 :goto_c

    .line 326
    .line 327
    :cond_b
    iget-object v6, v1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->f:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;

    .line 328
    .line 329
    iget-boolean v6, v6, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->h:Z

    .line 330
    .line 331
    if-eqz v6, :cond_c

    .line 332
    .line 333
    const-string v6, "Should not execute nested prefetch on canceled request"

    .line 334
    .line 335
    invoke-static {v6}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    :cond_c
    const-string v6, "compose:lazy:prefetch:update_nested_prefetch_count"

    .line 339
    .line 340
    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    :try_start_5
    invoke-interface {v14}, Ljava/util/Collection;->size()I

    .line 344
    .line 345
    .line 346
    move-result v6

    .line 347
    move v13, v7

    .line 348
    :goto_6
    if-ge v13, v6, :cond_d

    .line 349
    .line 350
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v18

    .line 354
    move-object/from16 v12, v18

    .line 355
    .line 356
    check-cast v12, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 357
    .line 358
    iput v9, v12, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->d:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 359
    .line 360
    add-int/lit8 v13, v13, 0x1

    .line 361
    .line 362
    goto :goto_6

    .line 363
    :cond_d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 364
    .line 365
    .line 366
    const-string v6, "compose:lazy:prefetch:nested"

    .line 367
    .line 368
    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    :goto_7
    :try_start_6
    iget v6, v1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->c:I

    .line 372
    .line 373
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 374
    .line 375
    .line 376
    move-result v9

    .line 377
    if-ge v6, v9, :cond_15

    .line 378
    .line 379
    iget v6, v1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->c:I

    .line 380
    .line 381
    aget-object v6, v11, v6

    .line 382
    .line 383
    if-nez v6, :cond_10

    .line 384
    .line 385
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler$PrefetchRequestScopeImpl;->a()J

    .line 386
    .line 387
    .line 388
    move-result-wide v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 389
    cmp-long v6, v12, v15

    .line 390
    .line 391
    if-gtz v6, :cond_e

    .line 392
    .line 393
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 394
    .line 395
    .line 396
    const/4 v1, 0x1

    .line 397
    return v1

    .line 398
    :cond_e
    :try_start_7
    iget v6, v1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->c:I

    .line 399
    .line 400
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v9

    .line 404
    check-cast v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 405
    .line 406
    iget-object v12, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->a:Lkotlin/jvm/functions/Function1;

    .line 407
    .line 408
    if-nez v12, :cond_f

    .line 409
    .line 410
    sget-object v9, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 411
    .line 412
    goto :goto_8

    .line 413
    :cond_f
    new-instance v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;

    .line 414
    .line 415
    iget v15, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->d:I

    .line 416
    .line 417
    invoke-direct {v13, v9, v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;I)V

    .line 418
    .line 419
    .line 420
    invoke-interface {v12, v13}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    iget-object v12, v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;->b:Ljava/util/ArrayList;

    .line 424
    .line 425
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 426
    .line 427
    .line 428
    move-result v13

    .line 429
    iput v13, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->f:I

    .line 430
    .line 431
    move-object v9, v12

    .line 432
    :goto_8
    aput-object v9, v11, v6

    .line 433
    .line 434
    :cond_10
    iget v6, v1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->c:I

    .line 435
    .line 436
    aget-object v6, v11, v6

    .line 437
    .line 438
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 439
    .line 440
    .line 441
    :goto_9
    iget v9, v1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->d:I

    .line 442
    .line 443
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 444
    .line 445
    .line 446
    move-result v12

    .line 447
    if-ge v9, v12, :cond_14

    .line 448
    .line 449
    iget v9, v1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->d:I

    .line 450
    .line 451
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v9

    .line 455
    check-cast v9, Landroidx/compose/foundation/lazy/layout/PrefetchRequest;

    .line 456
    .line 457
    if-eqz v10, :cond_12

    .line 458
    .line 459
    instance-of v12, v9, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;

    .line 460
    .line 461
    if-eqz v12, :cond_11

    .line 462
    .line 463
    move-object v12, v9

    .line 464
    check-cast v12, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;

    .line 465
    .line 466
    goto :goto_a

    .line 467
    :cond_11
    const/4 v12, 0x0

    .line 468
    :goto_a
    if-eqz v12, :cond_12

    .line 469
    .line 470
    const/4 v13, 0x1

    .line 471
    iput-boolean v13, v12, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->m:Z

    .line 472
    .line 473
    goto :goto_b

    .line 474
    :cond_12
    const/4 v13, 0x1

    .line 475
    :goto_b
    iput-boolean v13, v1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->e:Z

    .line 476
    .line 477
    check-cast v9, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;

    .line 478
    .line 479
    invoke-virtual {v9, v5}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->e(Landroidx/compose/foundation/lazy/layout/PrefetchRequestScope;)Z

    .line 480
    .line 481
    .line 482
    move-result v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 483
    if-eqz v9, :cond_13

    .line 484
    .line 485
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 486
    .line 487
    .line 488
    return v13

    .line 489
    :cond_13
    :try_start_8
    iget v9, v1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->d:I

    .line 490
    .line 491
    add-int/2addr v9, v13

    .line 492
    iput v9, v1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->d:I

    .line 493
    .line 494
    goto :goto_9

    .line 495
    :cond_14
    iput v7, v1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->d:I

    .line 496
    .line 497
    iget v6, v1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->c:I

    .line 498
    .line 499
    const/4 v13, 0x1

    .line 500
    add-int/2addr v6, v13

    .line 501
    iput v6, v1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->c:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 502
    .line 503
    const-wide/16 v15, 0x0

    .line 504
    .line 505
    goto/16 :goto_7

    .line 506
    .line 507
    :cond_15
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 508
    .line 509
    .line 510
    goto :goto_c

    .line 511
    :catchall_3
    move-exception v0

    .line 512
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 513
    .line 514
    .line 515
    throw v0

    .line 516
    :catchall_4
    move-exception v0

    .line 517
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 518
    .line 519
    .line 520
    throw v0

    .line 521
    :cond_16
    :goto_c
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->l:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;

    .line 522
    .line 523
    if-eqz v1, :cond_17

    .line 524
    .line 525
    iget-boolean v1, v1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->e:Z

    .line 526
    .line 527
    const/4 v13, 0x1

    .line 528
    if-ne v1, v13, :cond_17

    .line 529
    .line 530
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->j()V

    .line 531
    .line 532
    .line 533
    invoke-static {v2, v3, v4}, Landroidx/compose/ui/util/AndroidTrace_androidKt;->a(JLjava/lang/String;)V

    .line 534
    .line 535
    .line 536
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->l:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;

    .line 537
    .line 538
    if-eqz v1, :cond_17

    .line 539
    .line 540
    iput-boolean v7, v1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->e:Z

    .line 541
    .line 542
    :cond_17
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->d:Landroidx/compose/ui/unit/Constraints;

    .line 543
    .line 544
    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->g:Z

    .line 545
    .line 546
    if-nez v2, :cond_1c

    .line 547
    .line 548
    if-eqz v1, :cond_1c

    .line 549
    .line 550
    iget-wide v2, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->n:J

    .line 551
    .line 552
    iget-wide v4, v8, Landroidx/compose/foundation/lazy/layout/Averages;->d:J

    .line 553
    .line 554
    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->i(JJ)Z

    .line 555
    .line 556
    .line 557
    move-result v2

    .line 558
    if-eqz v2, :cond_4

    .line 559
    .line 560
    const-string v2, "compose:lazy:prefetch:measure"

    .line 561
    .line 562
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    :try_start_9
    iget-wide v1, v1, Landroidx/compose/ui/unit/Constraints;->a:J

    .line 566
    .line 567
    iget-boolean v3, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->h:Z

    .line 568
    .line 569
    if-eqz v3, :cond_18

    .line 570
    .line 571
    const-string v3, "Callers should check whether the request is still valid before calling performMeasure()"

    .line 572
    .line 573
    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    :cond_18
    iget-boolean v3, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->g:Z

    .line 577
    .line 578
    if-eqz v3, :cond_19

    .line 579
    .line 580
    const-string v3, "Request was already measured!"

    .line 581
    .line 582
    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    :cond_19
    const/4 v13, 0x1

    .line 586
    iput-boolean v13, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->g:Z

    .line 587
    .line 588
    iget-object v3, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->e:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    .line 589
    .line 590
    if-eqz v3, :cond_1b

    .line 591
    .line 592
    invoke-interface {v3}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;->c()I

    .line 593
    .line 594
    .line 595
    move-result v4

    .line 596
    move v5, v7

    .line 597
    :goto_d
    if-ge v5, v4, :cond_1a

    .line 598
    .line 599
    invoke-interface {v3, v5, v1, v2}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;->e(IJ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 600
    .line 601
    .line 602
    add-int/lit8 v5, v5, 0x1

    .line 603
    .line 604
    goto :goto_d

    .line 605
    :cond_1a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->j()V

    .line 609
    .line 610
    .line 611
    iget-wide v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->o:J

    .line 612
    .line 613
    iget-wide v3, v8, Landroidx/compose/foundation/lazy/layout/Averages;->d:J

    .line 614
    .line 615
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/foundation/lazy/layout/Averages;->a(JJ)J

    .line 616
    .line 617
    .line 618
    move-result-wide v1

    .line 619
    iput-wide v1, v8, Landroidx/compose/foundation/lazy/layout/Averages;->d:J

    .line 620
    .line 621
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->c:Lkotlin/jvm/functions/Function1;

    .line 622
    .line 623
    if-eqz v1, :cond_1c

    .line 624
    .line 625
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    goto :goto_f

    .line 629
    :cond_1b
    :try_start_a
    const-string v0, "performComposition() must be called before performMeasure()"

    .line 630
    .line 631
    invoke-static {v0}, Lq;->C(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 636
    :catchall_5
    move-exception v0

    .line 637
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 638
    .line 639
    .line 640
    throw v0

    .line 641
    :goto_e
    return v13

    .line 642
    :cond_1c
    :goto_f
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->l:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;

    .line 643
    .line 644
    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->g:Z

    .line 645
    .line 646
    if-eqz v2, :cond_22

    .line 647
    .line 648
    iget-boolean v0, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->k:Z

    .line 649
    .line 650
    if-eqz v0, :cond_22

    .line 651
    .line 652
    if-eqz v1, :cond_22

    .line 653
    .line 654
    iget-object v0, v1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->a:Ljava/util/List;

    .line 655
    .line 656
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 657
    .line 658
    .line 659
    move-result v1

    .line 660
    const v2, 0x7fffffff

    .line 661
    .line 662
    .line 663
    move v4, v2

    .line 664
    move v3, v7

    .line 665
    :goto_10
    if-ge v3, v1, :cond_1d

    .line 666
    .line 667
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v5

    .line 671
    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 672
    .line 673
    iget v5, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->e:I

    .line 674
    .line 675
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 676
    .line 677
    .line 678
    move-result v4

    .line 679
    add-int/lit8 v3, v3, 0x1

    .line 680
    .line 681
    goto :goto_10

    .line 682
    :cond_1d
    if-ne v4, v2, :cond_1e

    .line 683
    .line 684
    move v4, v7

    .line 685
    :cond_1e
    iget v1, v8, Landroidx/compose/foundation/lazy/layout/Averages;->e:I

    .line 686
    .line 687
    const/4 v9, -0x1

    .line 688
    if-ne v1, v9, :cond_1f

    .line 689
    .line 690
    move v1, v4

    .line 691
    goto :goto_11

    .line 692
    :cond_1f
    mul-int/lit8 v1, v1, 0x3

    .line 693
    .line 694
    add-int/2addr v1, v4

    .line 695
    div-int/lit8 v1, v1, 0x4

    .line 696
    .line 697
    :goto_11
    iput v1, v8, Landroidx/compose/foundation/lazy/layout/Averages;->e:I

    .line 698
    .line 699
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 700
    .line 701
    .line 702
    move-result v1

    .line 703
    move v5, v2

    .line 704
    move v3, v7

    .line 705
    :goto_12
    if-ge v3, v1, :cond_20

    .line 706
    .line 707
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v6

    .line 711
    check-cast v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 712
    .line 713
    iget v6, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->f:I

    .line 714
    .line 715
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 716
    .line 717
    .line 718
    move-result v5

    .line 719
    add-int/lit8 v3, v3, 0x1

    .line 720
    .line 721
    goto :goto_12

    .line 722
    :cond_20
    if-ne v5, v2, :cond_21

    .line 723
    .line 724
    move v5, v7

    .line 725
    :cond_21
    if-ge v5, v4, :cond_22

    .line 726
    .line 727
    const-wide/16 v0, 0x0

    .line 728
    .line 729
    iput-wide v0, v8, Landroidx/compose/foundation/lazy/layout/Averages;->d:J

    .line 730
    .line 731
    :cond_22
    return v7

    .line 732
    :cond_23
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->d()V

    .line 733
    .line 734
    .line 735
    return v7
.end method

.method public final g()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->i:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->f:Landroidx/compose/ui/layout/SubcomposeLayoutState$PausedPrecomposition;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PausedPrecomposition;->b()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-ne p0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_1
    :goto_0
    return v1
.end method

.method public final getIndex()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public final h(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/lazy/layout/Averages;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->f:Landroidx/compose/ui/layout/SubcomposeLayoutState$PausedPrecomposition;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->r:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;->a:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 8
    .line 9
    iget v2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->a:I

    .line 10
    .line 11
    invoke-virtual {v1, v2, p1, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->a(ILjava/lang/Object;Ljava/lang/Object;)Lkotlin/jvm/functions/Function2;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iget-object v0, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;->b:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->a()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Landroidx/compose/ui/node/LayoutNode;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    new-instance p2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;

    .line 30
    .line 31
    invoke-direct {p2, v0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    move-object v0, p2

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, p1, p2, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Z)V

    .line 38
    .line 39
    .line 40
    new-instance p2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$2;

    .line 41
    .line 42
    invoke-direct {p2, v0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$2;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :goto_1
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->f:Landroidx/compose/ui/layout/SubcomposeLayoutState$PausedPrecomposition;

    .line 47
    .line 48
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->j:Ljava/lang/Object;

    .line 49
    .line 50
    :cond_1
    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->q:Z

    .line 52
    .line 53
    :goto_2
    invoke-interface {v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PausedPrecomposition;->b()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    iget-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->q:Z

    .line 60
    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    new-instance p1, Landroidx/compose/foundation/lazy/layout/k;

    .line 64
    .line 65
    invoke-direct {p1, p0, p3}, Landroidx/compose/foundation/lazy/layout/k;-><init>(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;Landroidx/compose/foundation/lazy/layout/Averages;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, p1}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PausedPrecomposition;->a(Landroidx/compose/foundation/lazy/layout/k;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->j()V

    .line 73
    .line 74
    .line 75
    iget-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->q:Z

    .line 76
    .line 77
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->o:J

    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    iget-wide p0, p3, Landroidx/compose/foundation/lazy/layout/Averages;->b:J

    .line 82
    .line 83
    invoke-static {v0, v1, p0, p1}, Landroidx/compose/foundation/lazy/layout/Averages;->a(JJ)J

    .line 84
    .line 85
    .line 86
    move-result-wide p0

    .line 87
    iput-wide p0, p3, Landroidx/compose/foundation/lazy/layout/Averages;->b:J

    .line 88
    .line 89
    return-void

    .line 90
    :cond_3
    iget-wide p0, p3, Landroidx/compose/foundation/lazy/layout/Averages;->a:J

    .line 91
    .line 92
    invoke-static {v0, v1, p0, p1}, Landroidx/compose/foundation/lazy/layout/Averages;->a(JJ)J

    .line 93
    .line 94
    .line 95
    move-result-wide p0

    .line 96
    iput-wide p0, p3, Landroidx/compose/foundation/lazy/layout/Averages;->a:J

    .line 97
    .line 98
    return-void
.end method

.method public final i(JJ)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->m:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/16 p3, 0x0

    .line 6
    .line 7
    :cond_0
    cmp-long p0, p1, p3

    .line 8
    .line 9
    if-lez p0, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_1
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final j()V
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/time/MonotonicTimeSource;->a()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->p:J

    .line 6
    .line 7
    sget v4, Lkotlin/time/MonotonicTimeSource;->b:I

    .line 8
    .line 9
    sget-object v4, Lkotlin/time/DurationUnit;->k:Lkotlin/time/DurationUnit;

    .line 10
    .line 11
    const-wide/16 v4, 0x1

    .line 12
    .line 13
    sub-long v6, v2, v4

    .line 14
    .line 15
    or-long/2addr v6, v4

    .line 16
    const-wide v8, 0x7fffffffffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    cmp-long v6, v6, v8

    .line 22
    .line 23
    if-nez v6, :cond_1

    .line 24
    .line 25
    cmp-long v4, v0, v2

    .line 26
    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    sget-object v2, Lkotlin/time/Duration;->k:Lkotlin/time/Duration$Companion;

    .line 30
    .line 31
    const-wide/16 v2, 0x0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v2, v3}, Lkotlin/time/LongSaturatedMathKt;->a(J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    invoke-static {v2, v3}, Lkotlin/time/Duration;->i(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    sub-long v6, v0, v4

    .line 44
    .line 45
    or-long/2addr v4, v6

    .line 46
    cmp-long v4, v4, v8

    .line 47
    .line 48
    if-nez v4, :cond_2

    .line 49
    .line 50
    invoke-static {v0, v1}, Lkotlin/time/LongSaturatedMathKt;->a(J)J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-static {v0, v1, v2, v3}, Lkotlin/time/LongSaturatedMathKt;->b(JJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    :goto_0
    const/4 v4, 0x1

    .line 60
    shr-long v5, v2, v4

    .line 61
    .line 62
    sget-object v7, Lkotlin/time/Duration;->k:Lkotlin/time/Duration$Companion;

    .line 63
    .line 64
    long-to-int v2, v2

    .line 65
    and-int/2addr v2, v4

    .line 66
    if-nez v2, :cond_3

    .line 67
    .line 68
    move-wide v8, v5

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    const-wide v2, 0x8637bd05af6L

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    cmp-long v2, v5, v2

    .line 76
    .line 77
    if-lez v2, :cond_4

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    const-wide v2, -0x8637bd05af6L

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    cmp-long v2, v5, v2

    .line 86
    .line 87
    if-gez v2, :cond_5

    .line 88
    .line 89
    const-wide/high16 v8, -0x8000000000000000L

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_5
    const-wide/32 v2, 0xf4240

    .line 93
    .line 94
    .line 95
    mul-long v8, v5, v2

    .line 96
    .line 97
    :goto_1
    iput-wide v8, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->o:J

    .line 98
    .line 99
    iget-wide v2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->n:J

    .line 100
    .line 101
    sub-long/2addr v2, v8

    .line 102
    iput-wide v2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->n:J

    .line 103
    .line 104
    iput-wide v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->p:J

    .line 105
    .line 106
    const-string p0, "compose:lazy:prefetch:available_time_nanos"

    .line 107
    .line 108
    invoke-static {v2, v3, p0}, Landroidx/compose/ui/util/AndroidTrace_androidKt;->a(JLjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->d:Landroidx/compose/ui/unit/Constraints;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-boolean v2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->g:Z

    .line 8
    .line 9
    iget-boolean v3, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->h:Z

    .line 10
    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v5, "HandleAndRequestImpl { index = "

    .line 14
    .line 15
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget p0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->a:I

    .line 19
    .line 20
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ", constraints = "

    .line 24
    .line 25
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p0, ", isComposed = "

    .line 32
    .line 33
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p0, ", isMeasured = "

    .line 40
    .line 41
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, ", isCanceled = "

    .line 48
    .line 49
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p0, " }"

    .line 56
    .line 57
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method

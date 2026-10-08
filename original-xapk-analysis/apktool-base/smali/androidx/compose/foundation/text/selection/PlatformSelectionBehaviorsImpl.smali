.class public final Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;


# instance fields
.field public final a:Lkotlin/coroutines/CoroutineContext;

.field public final b:Landroid/content/Context;

.field public final c:Landroidx/compose/foundation/text/selection/SelectedTextType;

.field public final d:Landroidx/compose/ui/text/intl/LocaleList;

.field public final e:Lkotlinx/coroutines/sync/MutexImpl;

.field public f:Landroid/view/textclassifier/TextClassifier;

.field public final g:Landroidx/compose/runtime/MutableState;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Landroid/content/Context;Landroidx/compose/foundation/text/selection/SelectedTextType;Landroidx/compose/ui/text/intl/LocaleList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->a:Lkotlin/coroutines/CoroutineContext;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->c:Landroidx/compose/foundation/text/selection/SelectedTextType;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->d:Landroidx/compose/ui/text/intl/LocaleList;

    .line 11
    .line 12
    new-instance p1, Lkotlinx/coroutines/sync/MutexImpl;

    .line 13
    .line 14
    invoke-direct {p1}, Lkotlinx/coroutines/sync/MutexImpl;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->e:Lkotlinx/coroutines/sync/MutexImpl;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->g:Landroidx/compose/runtime/MutableState;

    .line 25
    .line 26
    new-instance p1, Ljava/lang/Object;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->h:Ljava/lang/Object;

    .line 32
    .line 33
    return-void
.end method

.method public static final a(Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;Ljava/lang/CharSequence;JLandroid/view/textclassifier/TextClassifier;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->e:Lkotlinx/coroutines/sync/MutexImpl;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->g:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    instance-of v4, v1, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$classifyText$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v1

    .line 14
    check-cast v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$classifyText$1;

    .line 15
    .line 16
    iget v5, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$classifyText$1;->s:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$classifyText$1;->s:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$classifyText$1;

    .line 29
    .line 30
    invoke-direct {v4, v0, v1}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$classifyText$1;-><init>(Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v1, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$classifyText$1;->q:Ljava/lang/Object;

    .line 34
    .line 35
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 36
    .line 37
    iget v6, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$classifyText$1;->s:I

    .line 38
    .line 39
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    const/4 v8, 0x2

    .line 42
    const/4 v9, 0x1

    .line 43
    const/4 v10, 0x0

    .line 44
    if-eqz v6, :cond_3

    .line 45
    .line 46
    if-eq v6, v9, :cond_2

    .line 47
    .line 48
    if-ne v6, v8, :cond_1

    .line 49
    .line 50
    iget-object v0, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$classifyText$1;->n:Ljava/lang/Object;

    .line 51
    .line 52
    move-object v2, v0

    .line 53
    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    .line 54
    .line 55
    iget-object v0, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$classifyText$1;->m:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Landroidx/compose/foundation/text/selection/TextClassificationResult;

    .line 58
    .line 59
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_5

    .line 63
    .line 64
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 65
    .line 66
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-object v10

    .line 70
    :cond_2
    iget-wide v11, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$classifyText$1;->p:J

    .line 71
    .line 72
    iget-object v6, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$classifyText$1;->o:Lkotlinx/coroutines/sync/MutexImpl;

    .line 73
    .line 74
    iget-object v13, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$classifyText$1;->n:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v13, Landroid/view/textclassifier/TextClassifier;

    .line 77
    .line 78
    iget-object v14, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$classifyText$1;->m:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v14, Ljava/lang/CharSequence;

    .line 81
    .line 82
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    move-object/from16 v1, p1

    .line 90
    .line 91
    iput-object v1, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$classifyText$1;->m:Ljava/lang/Object;

    .line 92
    .line 93
    move-object/from16 v6, p4

    .line 94
    .line 95
    iput-object v6, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$classifyText$1;->n:Ljava/lang/Object;

    .line 96
    .line 97
    iput-object v2, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$classifyText$1;->o:Lkotlinx/coroutines/sync/MutexImpl;

    .line 98
    .line 99
    move-wide/from16 v11, p2

    .line 100
    .line 101
    iput-wide v11, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$classifyText$1;->p:J

    .line 102
    .line 103
    iput v9, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$classifyText$1;->s:I

    .line 104
    .line 105
    invoke-virtual {v2, v4}, Lkotlinx/coroutines/sync/MutexImpl;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v13

    .line 109
    if-ne v13, v5, :cond_4

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_4
    move-object v14, v1

    .line 113
    move-object v13, v6

    .line 114
    move-object v6, v2

    .line 115
    :goto_1
    :try_start_0
    move-object v1, v3

    .line 116
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 117
    .line 118
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Landroidx/compose/foundation/text/selection/TextClassificationResult;

    .line 123
    .line 124
    if-eqz v1, :cond_6

    .line 125
    .line 126
    sget-object v15, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 127
    .line 128
    iget-wide v8, v1, Landroidx/compose/foundation/text/selection/TextClassificationResult;->b:J

    .line 129
    .line 130
    invoke-static {v11, v12, v8, v9}, Landroidx/compose/ui/text/TextRange;->b(JJ)Z

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    if-eqz v8, :cond_5

    .line 135
    .line 136
    iget-object v1, v1, Landroidx/compose/foundation/text/selection/TextClassificationResult;->a:Ljava/lang/CharSequence;

    .line 137
    .line 138
    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    if-eqz v1, :cond_5

    .line 143
    .line 144
    const/4 v1, 0x1

    .line 145
    :goto_2
    const/4 v15, 0x1

    .line 146
    goto :goto_3

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    goto :goto_6

    .line 149
    :cond_5
    const/4 v1, 0x0

    .line 150
    goto :goto_2

    .line 151
    :goto_3
    if-ne v1, v15, :cond_6

    .line 152
    .line 153
    invoke-interface {v6, v10}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    return-object v7

    .line 157
    :cond_6
    invoke-interface {v6, v10}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    new-instance v1, Landroid/view/textclassifier/TextClassification$Request$Builder;

    .line 161
    .line 162
    invoke-static {v11, v12}, Landroidx/compose/ui/text/TextRange;->f(J)I

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    invoke-static {v11, v12}, Landroidx/compose/ui/text/TextRange;->e(J)I

    .line 167
    .line 168
    .line 169
    move-result v8

    .line 170
    invoke-direct {v1, v14, v6, v8}, Landroid/view/textclassifier/TextClassification$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->c()Landroid/os/LocaleList;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-virtual {v1, v6}, Landroid/view/textclassifier/TextClassification$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification$Request$Builder;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification$Request$Builder;->build()Landroid/view/textclassifier/TextClassification$Request;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-interface {v13, v1}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v0, v14, v11, v12, v1}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->b(Ljava/lang/CharSequence;JLandroid/view/textclassifier/TextClassification;)Landroidx/compose/foundation/text/selection/TextClassificationResult;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    iput-object v0, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$classifyText$1;->m:Ljava/lang/Object;

    .line 194
    .line 195
    iput-object v2, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$classifyText$1;->n:Ljava/lang/Object;

    .line 196
    .line 197
    iput-object v10, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$classifyText$1;->o:Lkotlinx/coroutines/sync/MutexImpl;

    .line 198
    .line 199
    const/4 v1, 0x2

    .line 200
    iput v1, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$classifyText$1;->s:I

    .line 201
    .line 202
    invoke-virtual {v2, v4}, Lkotlinx/coroutines/sync/MutexImpl;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    if-ne v1, v5, :cond_7

    .line 207
    .line 208
    :goto_4
    return-object v5

    .line 209
    :cond_7
    :goto_5
    :try_start_1
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 210
    .line 211
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 212
    .line 213
    .line 214
    invoke-interface {v2, v10}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    return-object v7

    .line 218
    :catchall_1
    move-exception v0

    .line 219
    invoke-interface {v2, v10}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    throw v0

    .line 223
    :goto_6
    invoke-interface {v6, v10}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    throw v0
.end method


# virtual methods
.method public final b(Ljava/lang/CharSequence;JLandroid/view/textclassifier/TextClassification;)Landroidx/compose/foundation/text/selection/TextClassificationResult;
    .locals 7

    .line 1
    invoke-virtual {p4}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v6, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_3

    .line 16
    .line 17
    invoke-virtual {p4}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    move-object v3, v2

    .line 26
    check-cast v3, Landroid/app/RemoteAction;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/app/RemoteAction;->shouldShowIcon()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    move-object v2, v4

    .line 39
    :cond_1
    :goto_1
    check-cast v2, Landroid/app/RemoteAction;

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    iget-object v3, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->b:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    :cond_2
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    new-instance v1, Landroidx/compose/foundation/text/selection/TextClassificationResult;

    .line 62
    .line 63
    move-object v2, p1

    .line 64
    move-wide v3, p2

    .line 65
    move-object v5, p4

    .line 66
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/text/selection/TextClassificationResult;-><init>(Ljava/lang/CharSequence;JLandroid/view/textclassifier/TextClassification;Ljava/util/ArrayList;)V

    .line 67
    .line 68
    .line 69
    return-object v1
.end method

.method public final c()Landroid/os/LocaleList;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->d:Landroidx/compose/ui/text/intl/LocaleList;

    .line 3
    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    const/16 v2, 0xa

    .line 9
    .line 10
    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Landroidx/compose/ui/text/intl/LocaleList;->j:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroidx/compose/ui/text/intl/Locale;

    .line 34
    .line 35
    iget-object v2, v2, Landroidx/compose/ui/text/intl/Locale;->a:Ljava/util/Locale;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-array p0, v0, [Ljava/util/Locale;

    .line 42
    .line 43
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, [Ljava/util/Locale;

    .line 48
    .line 49
    array-length v0, p0

    .line 50
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, [Ljava/util/Locale;

    .line 55
    .line 56
    new-instance v0, Landroid/os/LocaleList;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 59
    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_1
    new-instance p0, Landroid/os/LocaleList;

    .line 63
    .line 64
    sget-object v1, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->a:Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;

    .line 65
    .line 66
    invoke-virtual {v1}, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;->a()Landroidx/compose/ui/text/intl/LocaleList;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-object v1, v1, Landroidx/compose/ui/text/intl/LocaleList;->j:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Landroidx/compose/ui/text/intl/Locale;

    .line 77
    .line 78
    iget-object v0, v0, Landroidx/compose/ui/text/intl/Locale;->a:Ljava/util/Locale;

    .line 79
    .line 80
    filled-new-array {v0}, [Ljava/util/Locale;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-direct {p0, v0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 85
    .line 86
    .line 87
    return-object p0
.end method

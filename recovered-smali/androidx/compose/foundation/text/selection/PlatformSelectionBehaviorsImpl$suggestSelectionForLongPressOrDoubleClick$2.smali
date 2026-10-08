.class final Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/view/textclassifier/TextClassifier;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroidx/compose/ui/text/TextRange;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2"
    f = "PlatformSelectionBehaviors.android.kt"
    l = {
        0x1b5,
        0xa1
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:Lkotlinx/coroutines/sync/MutexImpl;

.field public o:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

.field public p:J

.field public q:I

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/CharSequence;

.field public final synthetic t:J

.field public final synthetic u:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;


# direct methods
.method public constructor <init>(JLandroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;Ljava/lang/CharSequence;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p4, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->s:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-wide p1, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->t:J

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->u:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/textclassifier/TextClassifier;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->t:J

    .line 4
    .line 5
    iget-object v3, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->u:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 6
    .line 7
    iget-object v4, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->s:Ljava/lang/CharSequence;

    .line 8
    .line 9
    move-object v5, p2

    .line 10
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;-><init>(JLandroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;Ljava/lang/CharSequence;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, v0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->r:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->q:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    if-eq v1, v3, :cond_1

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->p:J

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v4

    .line 27
    :cond_1
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->p:J

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->o:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 30
    .line 31
    iget-object v3, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->n:Lkotlinx/coroutines/sync/MutexImpl;

    .line 32
    .line 33
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->r:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Landroidx/compose/foundation/text/selection/TextClassificationResult;

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->r:Ljava/lang/Object;

    .line 45
    .line 46
    move-object v9, p1

    .line 47
    check-cast v9, Landroid/view/textclassifier/TextClassifier;

    .line 48
    .line 49
    new-instance p1, Landroid/view/textclassifier/TextSelection$Request$Builder;

    .line 50
    .line 51
    iget-wide v5, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->t:J

    .line 52
    .line 53
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->f(J)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->e(J)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    iget-object v6, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->s:Ljava/lang/CharSequence;

    .line 62
    .line 63
    invoke-direct {p1, v6, v1, v5}, Landroid/view/textclassifier/TextSelection$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->u:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->c()Landroid/os/LocaleList;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {p1, v5}, Landroid/view/textclassifier/TextSelection$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection$Request$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 77
    .line 78
    const/16 v7, 0x1f

    .line 79
    .line 80
    if-lt v5, v7, :cond_3

    .line 81
    .line 82
    invoke-static {p1}, Ldb;->u(Landroid/view/textclassifier/TextSelection$Request$Builder;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request$Builder;->build()Landroid/view/textclassifier/TextSelection$Request;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-interface {v9, p1}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection;->getSelectionStartIndex()I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection;->getSelectionEndIndex()I

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    invoke-static {v8, v10}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    .line 102
    .line 103
    .line 104
    move-result-wide v10

    .line 105
    if-lt v5, v7, :cond_5

    .line 106
    .line 107
    invoke-static {p1}, Ldb;->j(Landroid/view/textclassifier/TextSelection;)Landroid/view/textclassifier/TextClassification;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    if-eqz v5, :cond_5

    .line 112
    .line 113
    invoke-static {p1}, Ldb;->j(Landroid/view/textclassifier/TextSelection;)Landroid/view/textclassifier/TextClassification;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v6, v10, v11, p1}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->b(Ljava/lang/CharSequence;JLandroid/view/textclassifier/TextClassification;)Landroidx/compose/foundation/text/selection/TextClassificationResult;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iget-object v2, v1, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->e:Lkotlinx/coroutines/sync/MutexImpl;

    .line 125
    .line 126
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->r:Ljava/lang/Object;

    .line 127
    .line 128
    iput-object v2, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->n:Lkotlinx/coroutines/sync/MutexImpl;

    .line 129
    .line 130
    iput-object v1, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->o:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 131
    .line 132
    iput-wide v10, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->p:J

    .line 133
    .line 134
    iput v3, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->q:I

    .line 135
    .line 136
    invoke-virtual {v2, p0}, Lkotlinx/coroutines/sync/MutexImpl;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    if-ne p0, v0, :cond_4

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_4
    move-object p0, p1

    .line 144
    move-object v3, v2

    .line 145
    move-object v2, v1

    .line 146
    move-wide v0, v10

    .line 147
    :goto_0
    :try_start_0
    iget-object p1, v2, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->g:Landroidx/compose/runtime/MutableState;

    .line 148
    .line 149
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 150
    .line 151
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .line 153
    .line 154
    invoke-interface {v3, v4}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :catchall_0
    move-exception v0

    .line 159
    move-object p0, v0

    .line 160
    invoke-interface {v3, v4}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    throw p0

    .line 164
    :cond_5
    iput-wide v10, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->p:J

    .line 165
    .line 166
    iput v2, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->q:I

    .line 167
    .line 168
    iget-object v5, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->u:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 169
    .line 170
    iget-object v6, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;->s:Ljava/lang/CharSequence;

    .line 171
    .line 172
    move-wide v7, v10

    .line 173
    move-object v10, p0

    .line 174
    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->a(Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;Ljava/lang/CharSequence;JLandroid/view/textclassifier/TextClassifier;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    if-ne p0, v0, :cond_6

    .line 179
    .line 180
    :goto_1
    return-object v0

    .line 181
    :cond_6
    move-wide v0, v7

    .line 182
    :goto_2
    new-instance p0, Landroidx/compose/ui/text/TextRange;

    .line 183
    .line 184
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 185
    .line 186
    .line 187
    return-object p0
.end method

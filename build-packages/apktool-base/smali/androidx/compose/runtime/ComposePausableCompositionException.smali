.class final Landroidx/compose/runtime/ComposePausableCompositionException;
.super Ljava/lang/RuntimeException;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final j:Landroidx/collection/ObjectList;

.field public final k:Landroidx/collection/MutableObjectList;

.field public final l:Landroidx/collection/IntList;

.field public final m:I


# direct methods
.method public constructor <init>(Landroidx/collection/ObjectList;Landroidx/collection/MutableObjectList;Landroidx/collection/IntList;ILjava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/ComposePausableCompositionException;->j:Landroidx/collection/ObjectList;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/runtime/ComposePausableCompositionException;->k:Landroidx/collection/MutableObjectList;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/runtime/ComposePausableCompositionException;->l:Landroidx/collection/IntList;

    .line 9
    .line 10
    iput p4, p0, Landroidx/compose/runtime/ComposePausableCompositionException;->m:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Landroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1;-><init>(Landroidx/compose/runtime/ComposePausableCompositionException;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->h(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/16 v2, 0x32

    .line 21
    .line 22
    if-lt v2, v1, :cond_0

    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    move-object v4, v0

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    instance-of v4, v0, Ljava/util/RandomAccess;

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    add-int/lit8 v2, v1, -0x32

    .line 40
    .line 41
    :goto_0
    if-ge v2, v1, :cond_2

    .line 42
    .line 43
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    sub-int/2addr v1, v2

    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move-object v4, v3

    .line 73
    :goto_2
    const/4 v8, 0x0

    .line 74
    const/16 v9, 0x3e

    .line 75
    .line 76
    const-string v5, "\n"

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    const/4 v7, 0x0

    .line 80
    invoke-static/range {v4 .. v9}, Lkotlin/collections/CollectionsKt;->y(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v2, "\n            |Failed to execute op number "

    .line 87
    .line 88
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget p0, p0, Landroidx/compose/runtime/ComposePausableCompositionException;->m:I

    .line 92
    .line 93
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p0, ":\n            |"

    .line 97
    .line 98
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p0, "\n            "

    .line 105
    .line 106
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-static {p0}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    return-object p0
.end method

.class public final Lkotlin/text/MatcherMatchResult$groups$1;
.super Lkotlin/collections/AbstractCollection;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/Collection;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractCollection<",
        "Lkotlin/text/MatchGroup;",
        ">;",
        "Ljava/util/Collection;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lkotlin/text/MatcherMatchResult;


# direct methods
.method public constructor <init>(Lkotlin/text/MatcherMatchResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlin/text/MatcherMatchResult$groups$1;->j:Lkotlin/text/MatcherMatchResult;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b()I
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/text/MatcherMatchResult$groups$1;->j:Lkotlin/text/MatcherMatchResult;

    .line 2
    .line 3
    iget-object p0, p0, Lkotlin/text/MatcherMatchResult;->a:Ljava/util/regex/Matcher;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    add-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    return p0
.end method

.method public final c(I)Lkotlin/text/MatchGroup;
    .locals 2

    .line 1
    iget-object p0, p0, Lkotlin/text/MatcherMatchResult$groups$1;->j:Lkotlin/text/MatcherMatchResult;

    .line 2
    .line 3
    iget-object p0, p0, Lkotlin/text/MatcherMatchResult;->a:Ljava/util/regex/Matcher;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->start(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->end(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, v0, Lkotlin/ranges/IntProgression;->j:I

    .line 18
    .line 19
    if-ltz v1, :cond_0

    .line 20
    .line 21
    new-instance v1, Lkotlin/text/MatchGroup;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, p0, v0}, Lkotlin/text/MatchGroup;-><init>(Ljava/lang/String;Lkotlin/ranges/IntRange;)V

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Lkotlin/text/MatchGroup;

    .line 6
    .line 7
    :goto_0
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    check-cast p1, Lkotlin/text/MatchGroup;

    .line 12
    .line 13
    invoke-super {p0, p1}, Lkotlin/collections/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 4

    .line 1
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/text/MatcherMatchResult$groups$1;->b()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v0, v3, v1, v2}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lma;

    .line 19
    .line 20
    invoke-direct {v0, v2, p0}, Lma;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    new-instance p0, Lkotlin/sequences/TransformingSequence;

    .line 24
    .line 25
    invoke-direct {p0, v1, v0}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lkotlin/sequences/TransformingSequence$iterator$1;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lkotlin/sequences/TransformingSequence$iterator$1;-><init>(Lkotlin/sequences/TransformingSequence;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

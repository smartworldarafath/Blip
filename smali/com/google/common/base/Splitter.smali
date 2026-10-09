.class public final Lcom/google/common/base/Splitter;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Splitter$Strategy;,
        Lcom/google/common/base/Splitter$SplittingIterator;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/base/CharMatcher;

.field public final b:Lcom/google/common/base/Splitter$Strategy;

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter$Strategy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/base/Splitter;->b:Lcom/google/common/base/Splitter$Strategy;

    .line 5
    .line 6
    sget-object p1, Lcom/google/common/base/CharMatcher$None;->k:Lcom/google/common/base/CharMatcher;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/common/base/Splitter;->a:Lcom/google/common/base/CharMatcher;

    .line 9
    .line 10
    const p1, 0x7fffffff

    .line 11
    .line 12
    .line 13
    iput p1, p0, Lcom/google/common/base/Splitter;->c:I

    .line 14
    .line 15
    return-void
.end method

.method public static a(C)Lcom/google/common/base/Splitter;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/base/CharMatcher$Is;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$Is;-><init>(C)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lcom/google/common/base/Splitter;

    .line 7
    .line 8
    new-instance v1, Lcom/google/common/base/Splitter$1;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lcom/google/common/base/Splitter$1;-><init>(Lcom/google/common/base/CharMatcher;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;)V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lcom/google/common/base/Splitter;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    const-string v3, "The separator may not be the empty string."

    .line 13
    .line 14
    invoke-static {v3, v0}, Lcom/google/common/base/Preconditions;->d(Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-static {p0}, Lcom/google/common/base/Splitter;->a(C)Lcom/google/common/base/Splitter;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_1
    new-instance v0, Lcom/google/common/base/Splitter;

    .line 33
    .line 34
    new-instance v1, Lcom/google/common/base/Splitter$2;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/google/common/base/Splitter$2;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/common/base/Splitter;->b:Lcom/google/common/base/Splitter$Strategy;

    .line 5
    .line 6
    invoke-interface {v0, p0, p1}, Lcom/google/common/base/Splitter$Strategy;->a(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

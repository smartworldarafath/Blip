.class final Landroidx/media3/extractor/text/ttml/TtmlNode;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:J

.field public final e:J

.field public final f:Landroidx/media3/extractor/text/ttml/TtmlStyle;

.field public final g:[Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Landroidx/media3/extractor/text/ttml/TtmlNode;

.field public final k:Ljava/util/HashMap;

.field public final l:Ljava/util/HashMap;

.field public m:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLandroidx/media3/extractor/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlNode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p10, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->i:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p7, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->f:Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 11
    .line 12
    iput-object p8, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->g:[Ljava/lang/String;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    iput-boolean p1, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->c:Z

    .line 20
    .line 21
    iput-wide p3, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->d:J

    .line 22
    .line 23
    iput-wide p5, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->e:J

    .line 24
    .line 25
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iput-object p9, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->h:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p11, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->j:Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 31
    .line 32
    new-instance p1, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->k:Ljava/util/HashMap;

    .line 38
    .line 39
    new-instance p1, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->l:Ljava/util/HashMap;

    .line 45
    .line 46
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroidx/media3/extractor/text/ttml/TtmlNode;
    .locals 12

    .line 1
    new-instance v0, Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 2
    .line 3
    const-string v1, "\r\n"

    .line 4
    .line 5
    const-string v2, "\n"

    .line 6
    .line 7
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v1, " *\n *"

    .line 12
    .line 13
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v1, " "

    .line 18
    .line 19
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v2, "[ \t\\x0B\u000c\r]+"

    .line 24
    .line 25
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, 0x0

    .line 31
    const/4 v1, 0x0

    .line 32
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    const-string v9, ""

    .line 45
    .line 46
    invoke-direct/range {v0 .. v11}, Landroidx/media3/extractor/text/ttml/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;JJLandroidx/media3/extractor/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlNode;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public static e(Ljava/lang/String;Ljava/util/TreeMap;)Landroid/text/SpannableStringBuilder;
    .locals 2

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/media3/common/text/Cue$Builder;

    .line 8
    .line 9
    invoke-direct {v0}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->b(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p0, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroidx/media3/common/text/Cue$Builder;

    .line 28
    .line 29
    iget-object p0, p0, Landroidx/media3/common/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    check-cast p0, Landroid/text/SpannableStringBuilder;

    .line 35
    .line 36
    return-object p0
.end method


# virtual methods
.method public final b(I)Landroidx/media3/extractor/text/ttml/TtmlNode;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->m:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw p0
.end method

.method public final c()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->m:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final d(Ljava/util/TreeSet;Z)V
    .locals 6

    .line 1
    const-string v0, "p"

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v2, "div"

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->i:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    :cond_0
    iget-wide v1, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->d:J

    .line 26
    .line 27
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    cmp-long v5, v1, v3

    .line 33
    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-wide v1, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->e:J

    .line 44
    .line 45
    cmp-long v3, v1, v3

    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object v1, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->m:Ljava/util/ArrayList;

    .line 57
    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    const/4 v1, 0x0

    .line 62
    move v2, v1

    .line 63
    :goto_0
    iget-object v3, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->m:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-ge v2, v3, :cond_6

    .line 70
    .line 71
    iget-object v3, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->m:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 78
    .line 79
    if-nez p2, :cond_5

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    move v4, v1

    .line 85
    goto :goto_2

    .line 86
    :cond_5
    :goto_1
    const/4 v4, 0x1

    .line 87
    :goto_2
    invoke-virtual {v3, p1, v4}, Landroidx/media3/extractor/text/ttml/TtmlNode;->d(Ljava/util/TreeSet;Z)V

    .line 88
    .line 89
    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_6
    :goto_3
    return-void
.end method

.method public final f(J)Z
    .locals 7

    .line 1
    iget-wide v0, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->d:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    iget-wide v5, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->e:J

    .line 11
    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    cmp-long p0, v5, v2

    .line 15
    .line 16
    if-eqz p0, :cond_3

    .line 17
    .line 18
    :cond_0
    cmp-long p0, v0, p1

    .line 19
    .line 20
    if-gtz p0, :cond_1

    .line 21
    .line 22
    cmp-long p0, v5, v2

    .line 23
    .line 24
    if-eqz p0, :cond_3

    .line 25
    .line 26
    :cond_1
    cmp-long p0, v0, v2

    .line 27
    .line 28
    if-nez p0, :cond_2

    .line 29
    .line 30
    cmp-long p0, p1, v5

    .line 31
    .line 32
    if-ltz p0, :cond_3

    .line 33
    .line 34
    :cond_2
    cmp-long p0, v0, p1

    .line 35
    .line 36
    if-gtz p0, :cond_4

    .line 37
    .line 38
    cmp-long p0, p1, v5

    .line 39
    .line 40
    if-gez p0, :cond_4

    .line 41
    .line 42
    :cond_3
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_4
    const/4 p0, 0x0

    .line 45
    return p0
.end method

.method public final g(JLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->h:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object p3, v1

    .line 13
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/text/ttml/TtmlNode;->f(J)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const-string v0, "div"

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->i:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    new-instance p0, Landroid/util/Pair;

    .line 34
    .line 35
    invoke-direct {p0, p3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/extractor/text/ttml/TtmlNode;->c()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-ge v0, v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroidx/media3/extractor/text/ttml/TtmlNode;->b(I)Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/media3/extractor/text/ttml/TtmlNode;->g(JLjava/lang/String;Ljava/util/ArrayList;)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    return-void
.end method

.method public final h(JLjava/util/Map;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/TreeMap;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p3

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p2}, Landroidx/media3/extractor/text/ttml/TtmlNode;->f(J)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1d

    .line 12
    .line 13
    :cond_0
    const-string v1, ""

    .line 14
    .line 15
    iget-object v2, v0, Landroidx/media3/extractor/text/ttml/TtmlNode;->h:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    move-object/from16 v6, p5

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v6, v2

    .line 27
    :goto_0
    iget-object v1, v0, Landroidx/media3/extractor/text/ttml/TtmlNode;->l:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_32

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/util/Map$Entry;

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Ljava/lang/String;

    .line 54
    .line 55
    iget-object v7, v0, Landroidx/media3/extractor/text/ttml/TtmlNode;->k:Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-eqz v8, :cond_2

    .line 62
    .line 63
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    check-cast v7, Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    const/4 v7, 0x0

    .line 75
    :goto_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Ljava/lang/Integer;

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eq v7, v2, :cond_2f

    .line 86
    .line 87
    move-object/from16 v8, p6

    .line 88
    .line 89
    invoke-virtual {v8, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Landroidx/media3/common/text/Cue$Builder;

    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-object/from16 v9, p4

    .line 99
    .line 100
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    check-cast v10, Landroidx/media3/extractor/text/ttml/TtmlRegion;

    .line 105
    .line 106
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    iget v10, v10, Landroidx/media3/extractor/text/ttml/TtmlRegion;->j:I

    .line 110
    .line 111
    iget-object v11, v0, Landroidx/media3/extractor/text/ttml/TtmlNode;->f:Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 112
    .line 113
    iget-object v12, v0, Landroidx/media3/extractor/text/ttml/TtmlNode;->g:[Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v11, v12, v4}, Landroidx/media3/extractor/text/ttml/TtmlRenderUtil;->a(Landroidx/media3/extractor/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    iget-object v12, v5, Landroidx/media3/common/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    .line 120
    .line 121
    check-cast v12, Landroid/text/SpannableStringBuilder;

    .line 122
    .line 123
    if-nez v12, :cond_3

    .line 124
    .line 125
    new-instance v12, Landroid/text/SpannableStringBuilder;

    .line 126
    .line 127
    invoke-direct {v12}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5, v12}, Landroidx/media3/common/text/Cue$Builder;->b(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    if-eqz v11, :cond_30

    .line 134
    .line 135
    iget v13, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->h:I

    .line 136
    .line 137
    const/4 v14, -0x1

    .line 138
    const/4 v3, 0x1

    .line 139
    if-ne v13, v14, :cond_4

    .line 140
    .line 141
    iget v15, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->i:I

    .line 142
    .line 143
    if-ne v15, v14, :cond_4

    .line 144
    .line 145
    move v13, v14

    .line 146
    goto :goto_5

    .line 147
    :cond_4
    if-ne v13, v3, :cond_5

    .line 148
    .line 149
    move v13, v3

    .line 150
    goto :goto_3

    .line 151
    :cond_5
    const/4 v13, 0x0

    .line 152
    :goto_3
    iget v15, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->i:I

    .line 153
    .line 154
    if-ne v15, v3, :cond_6

    .line 155
    .line 156
    const/4 v15, 0x2

    .line 157
    goto :goto_4

    .line 158
    :cond_6
    const/4 v15, 0x0

    .line 159
    :goto_4
    or-int/2addr v13, v15

    .line 160
    :goto_5
    if-eq v13, v14, :cond_b

    .line 161
    .line 162
    new-instance v13, Landroid/text/style/StyleSpan;

    .line 163
    .line 164
    iget v15, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->h:I

    .line 165
    .line 166
    if-ne v15, v14, :cond_8

    .line 167
    .line 168
    iget v3, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->i:I

    .line 169
    .line 170
    if-ne v3, v14, :cond_7

    .line 171
    .line 172
    move v15, v14

    .line 173
    const/4 v3, 0x1

    .line 174
    goto :goto_8

    .line 175
    :cond_7
    const/4 v3, 0x1

    .line 176
    :cond_8
    if-ne v15, v3, :cond_9

    .line 177
    .line 178
    move/from16 v17, v3

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_9
    const/16 v17, 0x0

    .line 182
    .line 183
    :goto_6
    iget v15, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->i:I

    .line 184
    .line 185
    if-ne v15, v3, :cond_a

    .line 186
    .line 187
    const/4 v15, 0x2

    .line 188
    goto :goto_7

    .line 189
    :cond_a
    const/4 v15, 0x0

    .line 190
    :goto_7
    or-int v15, v17, v15

    .line 191
    .line 192
    :goto_8
    invoke-direct {v13, v15}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 193
    .line 194
    .line 195
    const/16 v15, 0x21

    .line 196
    .line 197
    invoke-interface {v12, v13, v7, v2, v15}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 198
    .line 199
    .line 200
    goto :goto_9

    .line 201
    :cond_b
    const/16 v15, 0x21

    .line 202
    .line 203
    :goto_9
    iget v13, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->f:I

    .line 204
    .line 205
    if-ne v13, v3, :cond_c

    .line 206
    .line 207
    new-instance v13, Landroid/text/style/StrikethroughSpan;

    .line 208
    .line 209
    invoke-direct {v13}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-interface {v12, v13, v7, v2, v15}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 213
    .line 214
    .line 215
    :cond_c
    iget v13, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->g:I

    .line 216
    .line 217
    if-ne v13, v3, :cond_d

    .line 218
    .line 219
    new-instance v3, Landroid/text/style/UnderlineSpan;

    .line 220
    .line 221
    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-interface {v12, v3, v7, v2, v15}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 225
    .line 226
    .line 227
    :cond_d
    iget-boolean v3, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->c:Z

    .line 228
    .line 229
    if-eqz v3, :cond_f

    .line 230
    .line 231
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 232
    .line 233
    iget-boolean v13, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->c:Z

    .line 234
    .line 235
    if-eqz v13, :cond_e

    .line 236
    .line 237
    iget v13, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->b:I

    .line 238
    .line 239
    invoke-direct {v3, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 240
    .line 241
    .line 242
    invoke-static {v12, v3, v7, v2}, Landroidx/media3/common/text/SpanUtil;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 243
    .line 244
    .line 245
    goto :goto_a

    .line 246
    :cond_e
    const-string v0, "Font color has not been defined."

    .line 247
    .line 248
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :cond_f
    :goto_a
    iget-boolean v3, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->e:Z

    .line 253
    .line 254
    if-eqz v3, :cond_11

    .line 255
    .line 256
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    .line 257
    .line 258
    iget-boolean v13, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->e:Z

    .line 259
    .line 260
    if-eqz v13, :cond_10

    .line 261
    .line 262
    iget v13, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->d:I

    .line 263
    .line 264
    invoke-direct {v3, v13}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 265
    .line 266
    .line 267
    invoke-static {v12, v3, v7, v2}, Landroidx/media3/common/text/SpanUtil;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 268
    .line 269
    .line 270
    goto :goto_b

    .line 271
    :cond_10
    const-string v0, "Background color has not been defined."

    .line 272
    .line 273
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    return-void

    .line 277
    :cond_11
    :goto_b
    iget-object v3, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->a:Ljava/lang/String;

    .line 278
    .line 279
    if-eqz v3, :cond_12

    .line 280
    .line 281
    new-instance v3, Landroid/text/style/TypefaceSpan;

    .line 282
    .line 283
    iget-object v13, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->a:Ljava/lang/String;

    .line 284
    .line 285
    invoke-direct {v3, v13}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-static {v12, v3, v7, v2}, Landroidx/media3/common/text/SpanUtil;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 289
    .line 290
    .line 291
    :cond_12
    iget-object v3, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->r:Landroidx/media3/extractor/text/ttml/TextEmphasis;

    .line 292
    .line 293
    const/4 v13, 0x3

    .line 294
    if-eqz v3, :cond_17

    .line 295
    .line 296
    iget v15, v3, Landroidx/media3/extractor/text/ttml/TextEmphasis;->a:I

    .line 297
    .line 298
    if-ne v15, v14, :cond_15

    .line 299
    .line 300
    const/4 v14, 0x2

    .line 301
    if-eq v10, v14, :cond_14

    .line 302
    .line 303
    const/4 v14, 0x1

    .line 304
    if-ne v10, v14, :cond_13

    .line 305
    .line 306
    goto :goto_c

    .line 307
    :cond_13
    const/4 v10, 0x1

    .line 308
    goto :goto_d

    .line 309
    :cond_14
    :goto_c
    move v10, v13

    .line 310
    :goto_d
    move v15, v10

    .line 311
    const/4 v10, 0x1

    .line 312
    goto :goto_e

    .line 313
    :cond_15
    iget v10, v3, Landroidx/media3/extractor/text/ttml/TextEmphasis;->b:I

    .line 314
    .line 315
    :goto_e
    iget v3, v3, Landroidx/media3/extractor/text/ttml/TextEmphasis;->c:I

    .line 316
    .line 317
    const/4 v14, -0x2

    .line 318
    if-ne v3, v14, :cond_16

    .line 319
    .line 320
    const/4 v3, 0x1

    .line 321
    :cond_16
    new-instance v14, Landroidx/media3/common/text/TextEmphasisSpan;

    .line 322
    .line 323
    invoke-direct {v14, v15, v10, v3}, Landroidx/media3/common/text/TextEmphasisSpan;-><init>(III)V

    .line 324
    .line 325
    .line 326
    invoke-static {v12, v14, v7, v2}, Landroidx/media3/common/text/SpanUtil;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 327
    .line 328
    .line 329
    :cond_17
    iget v3, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->m:I

    .line 330
    .line 331
    const/4 v14, 0x2

    .line 332
    if-eq v3, v14, :cond_19

    .line 333
    .line 334
    if-eq v3, v13, :cond_18

    .line 335
    .line 336
    const/4 v10, 0x4

    .line 337
    if-eq v3, v10, :cond_18

    .line 338
    .line 339
    :goto_f
    const/4 v13, 0x0

    .line 340
    goto/16 :goto_17

    .line 341
    .line 342
    :cond_18
    new-instance v3, Landroidx/media3/extractor/text/ttml/DeleteTextSpan;

    .line 343
    .line 344
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 345
    .line 346
    .line 347
    const/16 v15, 0x21

    .line 348
    .line 349
    invoke-interface {v12, v3, v7, v2, v15}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 350
    .line 351
    .line 352
    goto :goto_f

    .line 353
    :cond_19
    iget-object v3, v0, Landroidx/media3/extractor/text/ttml/TtmlNode;->j:Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 354
    .line 355
    :goto_10
    if-eqz v3, :cond_1b

    .line 356
    .line 357
    iget-object v14, v3, Landroidx/media3/extractor/text/ttml/TtmlNode;->f:Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 358
    .line 359
    iget-object v15, v3, Landroidx/media3/extractor/text/ttml/TtmlNode;->g:[Ljava/lang/String;

    .line 360
    .line 361
    invoke-static {v14, v15, v4}, Landroidx/media3/extractor/text/ttml/TtmlRenderUtil;->a(Landroidx/media3/extractor/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 362
    .line 363
    .line 364
    move-result-object v14

    .line 365
    if-eqz v14, :cond_1a

    .line 366
    .line 367
    iget v14, v14, Landroidx/media3/extractor/text/ttml/TtmlStyle;->m:I

    .line 368
    .line 369
    const/4 v15, 0x1

    .line 370
    if-ne v14, v15, :cond_1a

    .line 371
    .line 372
    goto :goto_11

    .line 373
    :cond_1a
    iget-object v3, v3, Landroidx/media3/extractor/text/ttml/TtmlNode;->j:Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 374
    .line 375
    goto :goto_10

    .line 376
    :cond_1b
    const/4 v3, 0x0

    .line 377
    :goto_11
    if-nez v3, :cond_1c

    .line 378
    .line 379
    goto :goto_f

    .line 380
    :cond_1c
    new-instance v14, Ljava/util/ArrayDeque;

    .line 381
    .line 382
    invoke-direct {v14}, Ljava/util/ArrayDeque;-><init>()V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v14, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    :goto_12
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 389
    .line 390
    .line 391
    move-result v15

    .line 392
    if-nez v15, :cond_1f

    .line 393
    .line 394
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v15

    .line 398
    check-cast v15, Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 399
    .line 400
    iget-object v10, v15, Landroidx/media3/extractor/text/ttml/TtmlNode;->f:Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 401
    .line 402
    iget-object v13, v15, Landroidx/media3/extractor/text/ttml/TtmlNode;->g:[Ljava/lang/String;

    .line 403
    .line 404
    invoke-static {v10, v13, v4}, Landroidx/media3/extractor/text/ttml/TtmlRenderUtil;->a(Landroidx/media3/extractor/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 405
    .line 406
    .line 407
    move-result-object v10

    .line 408
    if-eqz v10, :cond_1d

    .line 409
    .line 410
    iget v10, v10, Landroidx/media3/extractor/text/ttml/TtmlStyle;->m:I

    .line 411
    .line 412
    const/4 v13, 0x3

    .line 413
    if-ne v10, v13, :cond_1d

    .line 414
    .line 415
    move-object v10, v15

    .line 416
    goto :goto_14

    .line 417
    :cond_1d
    invoke-virtual {v15}, Landroidx/media3/extractor/text/ttml/TtmlNode;->c()I

    .line 418
    .line 419
    .line 420
    move-result v10

    .line 421
    const/16 v17, 0x1

    .line 422
    .line 423
    add-int/lit8 v10, v10, -0x1

    .line 424
    .line 425
    :goto_13
    if-ltz v10, :cond_1e

    .line 426
    .line 427
    invoke-virtual {v15, v10}, Landroidx/media3/extractor/text/ttml/TtmlNode;->b(I)Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 428
    .line 429
    .line 430
    move-result-object v13

    .line 431
    invoke-virtual {v14, v13}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    add-int/lit8 v10, v10, -0x1

    .line 435
    .line 436
    goto :goto_13

    .line 437
    :cond_1e
    const/4 v13, 0x3

    .line 438
    goto :goto_12

    .line 439
    :cond_1f
    const/4 v10, 0x0

    .line 440
    :goto_14
    if-nez v10, :cond_20

    .line 441
    .line 442
    goto :goto_f

    .line 443
    :cond_20
    invoke-virtual {v10}, Landroidx/media3/extractor/text/ttml/TtmlNode;->c()I

    .line 444
    .line 445
    .line 446
    move-result v13

    .line 447
    const/4 v14, 0x1

    .line 448
    if-ne v13, v14, :cond_23

    .line 449
    .line 450
    const/4 v13, 0x0

    .line 451
    invoke-virtual {v10, v13}, Landroidx/media3/extractor/text/ttml/TtmlNode;->b(I)Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 452
    .line 453
    .line 454
    move-result-object v14

    .line 455
    iget-object v14, v14, Landroidx/media3/extractor/text/ttml/TtmlNode;->b:Ljava/lang/String;

    .line 456
    .line 457
    if-eqz v14, :cond_24

    .line 458
    .line 459
    invoke-virtual {v10, v13}, Landroidx/media3/extractor/text/ttml/TtmlNode;->b(I)Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 460
    .line 461
    .line 462
    move-result-object v14

    .line 463
    iget-object v14, v14, Landroidx/media3/extractor/text/ttml/TtmlNode;->b:Ljava/lang/String;

    .line 464
    .line 465
    sget-object v15, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 466
    .line 467
    iget-object v15, v10, Landroidx/media3/extractor/text/ttml/TtmlNode;->f:Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 468
    .line 469
    iget-object v10, v10, Landroidx/media3/extractor/text/ttml/TtmlNode;->g:[Ljava/lang/String;

    .line 470
    .line 471
    invoke-static {v15, v10, v4}, Landroidx/media3/extractor/text/ttml/TtmlRenderUtil;->a(Landroidx/media3/extractor/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 472
    .line 473
    .line 474
    move-result-object v10

    .line 475
    if-eqz v10, :cond_21

    .line 476
    .line 477
    iget v10, v10, Landroidx/media3/extractor/text/ttml/TtmlStyle;->n:I

    .line 478
    .line 479
    :goto_15
    const/4 v15, -0x1

    .line 480
    goto :goto_16

    .line 481
    :cond_21
    const/4 v10, -0x1

    .line 482
    goto :goto_15

    .line 483
    :goto_16
    if-ne v10, v15, :cond_22

    .line 484
    .line 485
    iget-object v15, v3, Landroidx/media3/extractor/text/ttml/TtmlNode;->f:Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 486
    .line 487
    iget-object v3, v3, Landroidx/media3/extractor/text/ttml/TtmlNode;->g:[Ljava/lang/String;

    .line 488
    .line 489
    invoke-static {v15, v3, v4}, Landroidx/media3/extractor/text/ttml/TtmlRenderUtil;->a(Landroidx/media3/extractor/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 490
    .line 491
    .line 492
    move-result-object v3

    .line 493
    if-eqz v3, :cond_22

    .line 494
    .line 495
    iget v10, v3, Landroidx/media3/extractor/text/ttml/TtmlStyle;->n:I

    .line 496
    .line 497
    :cond_22
    new-instance v3, Landroidx/media3/common/text/RubySpan;

    .line 498
    .line 499
    invoke-direct {v3, v14, v10}, Landroidx/media3/common/text/RubySpan;-><init>(Ljava/lang/String;I)V

    .line 500
    .line 501
    .line 502
    const/16 v15, 0x21

    .line 503
    .line 504
    invoke-interface {v12, v3, v7, v2, v15}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 505
    .line 506
    .line 507
    goto :goto_17

    .line 508
    :cond_23
    const/4 v13, 0x0

    .line 509
    :cond_24
    const-string v3, "TtmlRenderUtil"

    .line 510
    .line 511
    const-string v10, "Skipping rubyText node without exactly one text child."

    .line 512
    .line 513
    invoke-static {v3, v10}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    :goto_17
    iget v3, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->q:I

    .line 517
    .line 518
    const/4 v14, 0x1

    .line 519
    if-ne v3, v14, :cond_25

    .line 520
    .line 521
    new-instance v3, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    .line 522
    .line 523
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 524
    .line 525
    .line 526
    invoke-static {v12, v3, v7, v2}, Landroidx/media3/common/text/SpanUtil;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 527
    .line 528
    .line 529
    :cond_25
    iget v3, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->j:I

    .line 530
    .line 531
    const/high16 v10, 0x42c80000    # 100.0f

    .line 532
    .line 533
    if-eq v3, v14, :cond_2c

    .line 534
    .line 535
    const/4 v14, 0x2

    .line 536
    if-eq v3, v14, :cond_2b

    .line 537
    .line 538
    const/4 v14, 0x3

    .line 539
    if-eq v3, v14, :cond_26

    .line 540
    .line 541
    move-object/from16 v16, v1

    .line 542
    .line 543
    move/from16 p5, v10

    .line 544
    .line 545
    goto/16 :goto_1a

    .line 546
    .line 547
    :cond_26
    iget v3, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->k:F

    .line 548
    .line 549
    div-float/2addr v3, v10

    .line 550
    const-class v14, Landroid/text/style/RelativeSizeSpan;

    .line 551
    .line 552
    invoke-interface {v12, v7, v2, v14}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v14

    .line 556
    check-cast v14, [Landroid/text/style/RelativeSizeSpan;

    .line 557
    .line 558
    array-length v15, v14

    .line 559
    move/from16 v18, v13

    .line 560
    .line 561
    move v13, v3

    .line 562
    move/from16 v3, v18

    .line 563
    .line 564
    :goto_18
    if-ge v3, v15, :cond_2a

    .line 565
    .line 566
    move/from16 p5, v10

    .line 567
    .line 568
    aget-object v10, v14, v3

    .line 569
    .line 570
    move-object/from16 v16, v1

    .line 571
    .line 572
    invoke-interface {v12, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 573
    .line 574
    .line 575
    move-result v1

    .line 576
    if-gt v1, v7, :cond_27

    .line 577
    .line 578
    invoke-interface {v12, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 579
    .line 580
    .line 581
    move-result v1

    .line 582
    if-lt v1, v2, :cond_27

    .line 583
    .line 584
    invoke-virtual {v10}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    .line 585
    .line 586
    .line 587
    move-result v1

    .line 588
    mul-float/2addr v1, v13

    .line 589
    move v13, v1

    .line 590
    :cond_27
    invoke-interface {v12, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 591
    .line 592
    .line 593
    move-result v1

    .line 594
    if-ne v1, v7, :cond_28

    .line 595
    .line 596
    invoke-interface {v12, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 597
    .line 598
    .line 599
    move-result v1

    .line 600
    if-ne v1, v2, :cond_28

    .line 601
    .line 602
    invoke-interface {v12, v10}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 603
    .line 604
    .line 605
    move-result v1

    .line 606
    move/from16 v17, v3

    .line 607
    .line 608
    const/16 v3, 0x21

    .line 609
    .line 610
    if-ne v1, v3, :cond_29

    .line 611
    .line 612
    invoke-interface {v12, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 613
    .line 614
    .line 615
    goto :goto_19

    .line 616
    :cond_28
    move/from16 v17, v3

    .line 617
    .line 618
    :cond_29
    :goto_19
    add-int/lit8 v3, v17, 0x1

    .line 619
    .line 620
    move/from16 v10, p5

    .line 621
    .line 622
    move-object/from16 v1, v16

    .line 623
    .line 624
    goto :goto_18

    .line 625
    :cond_2a
    move-object/from16 v16, v1

    .line 626
    .line 627
    move/from16 p5, v10

    .line 628
    .line 629
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    .line 630
    .line 631
    invoke-direct {v1, v13}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 632
    .line 633
    .line 634
    const/16 v15, 0x21

    .line 635
    .line 636
    invoke-interface {v12, v1, v7, v2, v15}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 637
    .line 638
    .line 639
    goto :goto_1a

    .line 640
    :cond_2b
    move-object/from16 v16, v1

    .line 641
    .line 642
    move/from16 p5, v10

    .line 643
    .line 644
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    .line 645
    .line 646
    iget v3, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->k:F

    .line 647
    .line 648
    invoke-direct {v1, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 649
    .line 650
    .line 651
    invoke-static {v12, v1, v7, v2}, Landroidx/media3/common/text/SpanUtil;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 652
    .line 653
    .line 654
    goto :goto_1a

    .line 655
    :cond_2c
    move-object/from16 v16, v1

    .line 656
    .line 657
    move/from16 p5, v10

    .line 658
    .line 659
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    .line 660
    .line 661
    iget v3, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->k:F

    .line 662
    .line 663
    float-to-int v3, v3

    .line 664
    const/4 v14, 0x1

    .line 665
    invoke-direct {v1, v3, v14}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 666
    .line 667
    .line 668
    invoke-static {v12, v1, v7, v2}, Landroidx/media3/common/text/SpanUtil;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 669
    .line 670
    .line 671
    :goto_1a
    const-string v1, "p"

    .line 672
    .line 673
    iget-object v2, v0, Landroidx/media3/extractor/text/ttml/TtmlNode;->a:Ljava/lang/String;

    .line 674
    .line 675
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    move-result v1

    .line 679
    if-eqz v1, :cond_31

    .line 680
    .line 681
    iget v1, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->s:F

    .line 682
    .line 683
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 684
    .line 685
    .line 686
    cmpl-float v2, v1, v2

    .line 687
    .line 688
    if-eqz v2, :cond_2d

    .line 689
    .line 690
    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 691
    .line 692
    mul-float/2addr v1, v2

    .line 693
    div-float v1, v1, p5

    .line 694
    .line 695
    iput v1, v5, Landroidx/media3/common/text/Cue$Builder;->q:F

    .line 696
    .line 697
    :cond_2d
    iget-object v1, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->o:Landroid/text/Layout$Alignment;

    .line 698
    .line 699
    if-eqz v1, :cond_2e

    .line 700
    .line 701
    iput-object v1, v5, Landroidx/media3/common/text/Cue$Builder;->c:Landroid/text/Layout$Alignment;

    .line 702
    .line 703
    :cond_2e
    iget-object v1, v11, Landroidx/media3/extractor/text/ttml/TtmlStyle;->p:Landroid/text/Layout$Alignment;

    .line 704
    .line 705
    if-eqz v1, :cond_31

    .line 706
    .line 707
    iput-object v1, v5, Landroidx/media3/common/text/Cue$Builder;->d:Landroid/text/Layout$Alignment;

    .line 708
    .line 709
    goto :goto_1b

    .line 710
    :cond_2f
    move-object/from16 v9, p4

    .line 711
    .line 712
    move-object/from16 v8, p6

    .line 713
    .line 714
    :cond_30
    move-object/from16 v16, v1

    .line 715
    .line 716
    :cond_31
    :goto_1b
    move-object/from16 v1, v16

    .line 717
    .line 718
    goto/16 :goto_1

    .line 719
    .line 720
    :cond_32
    const/4 v13, 0x0

    .line 721
    :goto_1c
    move-object/from16 v9, p4

    .line 722
    .line 723
    move-object/from16 v8, p6

    .line 724
    .line 725
    invoke-virtual {v0}, Landroidx/media3/extractor/text/ttml/TtmlNode;->c()I

    .line 726
    .line 727
    .line 728
    move-result v1

    .line 729
    if-ge v13, v1, :cond_33

    .line 730
    .line 731
    invoke-virtual {v0, v13}, Landroidx/media3/extractor/text/ttml/TtmlNode;->b(I)Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 732
    .line 733
    .line 734
    move-result-object v1

    .line 735
    move-wide/from16 v2, p1

    .line 736
    .line 737
    move-object v7, v8

    .line 738
    move-object v5, v9

    .line 739
    invoke-virtual/range {v1 .. v7}, Landroidx/media3/extractor/text/ttml/TtmlNode;->h(JLjava/util/Map;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/TreeMap;)V

    .line 740
    .line 741
    .line 742
    add-int/lit8 v13, v13, 0x1

    .line 743
    .line 744
    move-object/from16 v4, p3

    .line 745
    .line 746
    goto :goto_1c

    .line 747
    :cond_33
    :goto_1d
    return-void
.end method

.method public final i(JZLjava/lang/String;Ljava/util/TreeMap;)V
    .locals 11

    .line 1
    move-object/from16 v5, p5

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->k:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v6, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->l:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 11
    .line 12
    .line 13
    const-string v1, "metadata"

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto/16 :goto_8

    .line 24
    .line 25
    :cond_0
    const-string v1, ""

    .line 26
    .line 27
    iget-object v3, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->h:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    move-object v4, p4

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-object v4, v3

    .line 38
    :goto_0
    iget-boolean v1, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->c:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    if-eqz p3, :cond_2

    .line 43
    .line 44
    invoke-static {v4, v5}, Landroidx/media3/extractor/text/ttml/TtmlNode;->e(Ljava/lang/String;Ljava/util/TreeMap;)Landroid/text/SpannableStringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object p0, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->b:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    const-string v1, "br"

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const/16 v7, 0xa

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    if-eqz p3, :cond_3

    .line 68
    .line 69
    invoke-static {v4, v5}, Landroidx/media3/extractor/text/ttml/TtmlNode;->e(Ljava/lang/String;Ljava/util/TreeMap;)Landroid/text/SpannableStringBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    invoke-virtual/range {p0 .. p2}, Landroidx/media3/extractor/text/ttml/TtmlNode;->f(J)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_a

    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_4

    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Ljava/util/Map$Entry;

    .line 102
    .line 103
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    check-cast v8, Ljava/lang/String;

    .line 108
    .line 109
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Landroidx/media3/common/text/Cue$Builder;

    .line 114
    .line 115
    iget-object v3, v3, Landroidx/media3/common/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    const-string v0, "p"

    .line 133
    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    const/4 v9, 0x0

    .line 139
    move v10, v9

    .line 140
    :goto_2
    invoke-virtual {p0}, Landroidx/media3/extractor/text/ttml/TtmlNode;->c()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    const/4 v1, 0x1

    .line 145
    if-ge v10, v0, :cond_7

    .line 146
    .line 147
    invoke-virtual {p0, v10}, Landroidx/media3/extractor/text/ttml/TtmlNode;->b(I)Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    if-nez p3, :cond_6

    .line 152
    .line 153
    if-eqz v8, :cond_5

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_5
    move v3, v9

    .line 157
    :goto_3
    move-wide v1, p1

    .line 158
    goto :goto_5

    .line 159
    :cond_6
    :goto_4
    move v3, v1

    .line 160
    goto :goto_3

    .line 161
    :goto_5
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/extractor/text/ttml/TtmlNode;->i(JZLjava/lang/String;Ljava/util/TreeMap;)V

    .line 162
    .line 163
    .line 164
    add-int/lit8 v10, v10, 0x1

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_7
    if-eqz v8, :cond_9

    .line 168
    .line 169
    invoke-static {v4, v5}, Landroidx/media3/extractor/text/ttml/TtmlNode;->e(Ljava/lang/String;Ljava/util/TreeMap;)Landroid/text/SpannableStringBuilder;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    sub-int/2addr p1, v1

    .line 178
    :goto_6
    if-ltz p1, :cond_8

    .line 179
    .line 180
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    const/16 p3, 0x20

    .line 185
    .line 186
    if-ne p2, p3, :cond_8

    .line 187
    .line 188
    add-int/lit8 p1, p1, -0x1

    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_8
    if-ltz p1, :cond_9

    .line 192
    .line 193
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-eq p1, v7, :cond_9

    .line 198
    .line 199
    invoke-virtual {p0, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 200
    .line 201
    .line 202
    :cond_9
    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-eqz p1, :cond_a

    .line 215
    .line 216
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    check-cast p1, Ljava/util/Map$Entry;

    .line 221
    .line 222
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    check-cast p2, Ljava/lang/String;

    .line 227
    .line 228
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    check-cast p1, Landroidx/media3/common/text/Cue$Builder;

    .line 233
    .line 234
    iget-object p1, p1, Landroidx/media3/common/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    .line 235
    .line 236
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-virtual {v6, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    goto :goto_7

    .line 251
    :cond_a
    :goto_8
    return-void
.end method

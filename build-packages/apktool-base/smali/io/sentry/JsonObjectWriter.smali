.class public final Lio/sentry/JsonObjectWriter;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/ObjectWriter;


# instance fields
.field public final a:Lio/sentry/vendor/gson/stream/JsonWriter;

.field public final b:Lio/sentry/JsonObjectSerializer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lio/sentry/vendor/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/JsonObjectWriter;->a:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 10
    .line 11
    new-instance p1, Lio/sentry/JsonObjectSerializer;

    .line 12
    .line 13
    invoke-direct {p1, p2}, Lio/sentry/JsonObjectSerializer;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lio/sentry/JsonObjectWriter;->b:Lio/sentry/JsonObjectSerializer;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()Lio/sentry/JsonObjectWriter;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/JsonObjectWriter;->a:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->A()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->a()V

    .line 7
    .line 8
    .line 9
    iget v1, v0, Lio/sentry/vendor/gson/stream/JsonWriter;->l:I

    .line 10
    .line 11
    iget-object v2, v0, Lio/sentry/vendor/gson/stream/JsonWriter;->k:[I

    .line 12
    .line 13
    array-length v3, v2

    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    mul-int/lit8 v1, v1, 0x2

    .line 17
    .line 18
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, v0, Lio/sentry/vendor/gson/stream/JsonWriter;->k:[I

    .line 23
    .line 24
    :cond_0
    iget-object v1, v0, Lio/sentry/vendor/gson/stream/JsonWriter;->k:[I

    .line 25
    .line 26
    iget v2, v0, Lio/sentry/vendor/gson/stream/JsonWriter;->l:I

    .line 27
    .line 28
    add-int/lit8 v3, v2, 0x1

    .line 29
    .line 30
    iput v3, v0, Lio/sentry/vendor/gson/stream/JsonWriter;->l:I

    .line 31
    .line 32
    const/4 v3, 0x3

    .line 33
    aput v3, v1, v2

    .line 34
    .line 35
    iget-object v0, v0, Lio/sentry/vendor/gson/stream/JsonWriter;->j:Ljava/io/Writer;

    .line 36
    .line 37
    const/16 v1, 0x7b

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 40
    .line 41
    .line 42
    return-object p0
.end method

.method public final b()Lio/sentry/JsonObjectWriter;
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    const/16 v1, 0x7d

    .line 3
    .line 4
    iget-object v2, p0, Lio/sentry/JsonObjectWriter;->a:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 5
    .line 6
    const/4 v3, 0x3

    .line 7
    invoke-virtual {v2, v3, v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->h(IIC)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lio/sentry/JsonObjectWriter;->a:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    iget-object v2, v1, Lio/sentry/vendor/gson/stream/JsonWriter;->p:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v2, :cond_1

    .line 9
    .line 10
    iget v2, v1, Lio/sentry/vendor/gson/stream/JsonWriter;->l:I

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iput-object p1, v1, Lio/sentry/vendor/gson/stream/JsonWriter;->p:Ljava/lang/String;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    const-string p0, "JsonWriter is closed."

    .line 18
    .line 19
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    invoke-static {}, Lio/sentry/d;->d()V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const-string p0, "name == null"

    .line 31
    .line 32
    invoke-static {p0}, Lio/sentry/d;->f(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lio/sentry/JsonObjectWriter;->a:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput-object p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->m:Ljava/lang/String;

    .line 16
    .line 17
    const-string p1, ": "

    .line 18
    .line 19
    iput-object p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->n:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->m:Ljava/lang/String;

    .line 24
    .line 25
    const-string p1, ":"

    .line 26
    .line 27
    iput-object p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->n:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method

.method public final e(D)Lio/sentry/JsonObjectWriter;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/JsonObjectWriter;->a:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->A()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, v0, Lio/sentry/vendor/gson/stream/JsonWriter;->o:Z

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, "Numeric values must be finite, but was "

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->a()V

    .line 44
    .line 45
    .line 46
    iget-object v0, v0, Lio/sentry/vendor/gson/stream/JsonWriter;->j:Ljava/io/Writer;

    .line 47
    .line 48
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 53
    .line 54
    .line 55
    return-object p0
.end method

.method public final f(J)Lio/sentry/JsonObjectWriter;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/JsonObjectWriter;->a:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->A()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->a()V

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lio/sentry/vendor/gson/stream/JsonWriter;->j:Ljava/io/Writer;

    .line 10
    .line 11
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public final g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/JsonObjectWriter;->b:Lio/sentry/JsonObjectSerializer;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lio/sentry/JsonObjectSerializer;->a(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final h(Ljava/lang/Boolean;)Lio/sentry/JsonObjectWriter;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/JsonObjectWriter;->a:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->q()V

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->A()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->a()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lio/sentry/vendor/gson/stream/JsonWriter;->j:Ljava/io/Writer;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const-string p1, "true"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string p1, "false"

    .line 27
    .line 28
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object p0
.end method

.method public final i(Ljava/lang/Number;)Lio/sentry/JsonObjectWriter;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/JsonObjectWriter;->a:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->q()V

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->A()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-boolean v2, v0, Lio/sentry/vendor/gson/stream/JsonWriter;->o:Z

    .line 17
    .line 18
    if-nez v2, :cond_2

    .line 19
    .line 20
    const-string v2, "-Infinity"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    const-string v2, "Infinity"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    const-string v2, "NaN"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string p0, "Numeric values must be finite, but was "

    .line 46
    .line 47
    invoke-static {p1, p0}, Lio/sentry/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    return-object p0

    .line 52
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->a()V

    .line 53
    .line 54
    .line 55
    iget-object p1, v0, Lio/sentry/vendor/gson/stream/JsonWriter;->j:Ljava/io/Writer;

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 58
    .line 59
    .line 60
    return-object p0
.end method

.method public final j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/JsonObjectWriter;->a:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->q()V

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->A()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->a()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lio/sentry/vendor/gson/stream/JsonWriter;->w(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public final k(Z)Lio/sentry/JsonObjectWriter;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/JsonObjectWriter;->a:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->A()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->a()V

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lio/sentry/vendor/gson/stream/JsonWriter;->j:Ljava/io/Writer;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string p1, "true"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p1, "false"

    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

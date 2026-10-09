.class public Lkotlinx/serialization/json/internal/StreamingJsonDecoder;
.super Lkotlinx/serialization/encoding/AbstractDecoder;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/serialization/json/JsonDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;
    }
.end annotation


# instance fields
.field public final a:Lkotlinx/serialization/json/Json;

.field public final b:Lkotlinx/serialization/json/internal/WriteMode;

.field public final c:Lkotlinx/serialization/json/internal/StringJsonLexer;

.field public final d:Lkotlinx/serialization/modules/SerializersModule;

.field public e:I

.field public final f:Lkotlinx/serialization/json/internal/JsonElementMarker;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/StringJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->a:Lkotlinx/serialization/json/Json;

    .line 11
    .line 12
    iput-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->b:Lkotlinx/serialization/json/internal/WriteMode;

    .line 13
    .line 14
    iput-object p3, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 15
    .line 16
    iget-object p2, p1, Lkotlinx/serialization/json/Json;->b:Lkotlinx/serialization/modules/SerializersModule;

    .line 17
    .line 18
    iput-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->d:Lkotlinx/serialization/modules/SerializersModule;

    .line 19
    .line 20
    const/4 p2, -0x1

    .line 21
    iput p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->e:I

    .line 22
    .line 23
    iget-object p1, p1, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    .line 24
    .line 25
    iget-boolean p1, p1, Lkotlinx/serialization/json/JsonConfiguration;->a:Z

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Lkotlinx/serialization/json/internal/JsonElementMarker;

    .line 32
    .line 33
    invoke-direct {p1, p4}, Lkotlinx/serialization/json/internal/JsonElementMarker;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->f:Lkotlinx/serialization/json/internal/JsonElementMarker;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final A()F
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->h()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->a:Lkotlinx/serialization/json/Json;

    .line 14
    .line 15
    iget-object p0, p0, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 22
    .line 23
    .line 24
    cmpg-float p0, p0, v4

    .line 25
    .line 26
    if-gtz p0, :cond_0

    .line 27
    .line 28
    return v1

    .line 29
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0, v3}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->e(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v1, "It is possible to deserialize them using \'JsonBuilder.allowSpecialFloatingPointValues = true\'"

    .line 38
    .line 39
    const/4 v4, 0x2

    .line 40
    invoke-static {v0, p0, v2, v1, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    throw v3

    .line 44
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v4, "Failed to parse type \'float\' for input \'"

    .line 47
    .line 48
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const/16 v1, 0x27

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const/4 v1, 0x6

    .line 64
    invoke-static {v0, p0, v2, v3, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    throw v3
.end method

.method public final B()D
    .locals 10

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->h()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 10
    .line 11
    .line 12
    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->a:Lkotlinx/serialization/json/Json;

    .line 14
    .line 15
    iget-object p0, p0, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    .line 16
    .line 17
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v6

    .line 21
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    cmpg-double p0, v6, v8

    .line 27
    .line 28
    if-gtz p0, :cond_0

    .line 29
    .line 30
    return-wide v4

    .line 31
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0, v3}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->e(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v1, "It is possible to deserialize them using \'JsonBuilder.allowSpecialFloatingPointValues = true\'"

    .line 40
    .line 41
    const/4 v4, 0x2

    .line 42
    invoke-static {v0, p0, v2, v1, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    throw v3

    .line 46
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v4, "Failed to parse type \'double\' for input \'"

    .line 49
    .line 50
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x27

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const/4 v1, 0x6

    .line 66
    invoke-static {v0, p0, v2, v3, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    throw v3
.end method

.method public final a(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->a:Lkotlinx/serialization/json/Json;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-static {p1, v2}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->s(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    :cond_1
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 26
    .line 27
    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->p()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_4

    .line 32
    .line 33
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->b:Lkotlinx/serialization/json/internal/WriteMode;

    .line 34
    .line 35
    iget-char p0, p0, Lkotlinx/serialization/json/internal/WriteMode;->k:C

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->s(C)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p1, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->c:Lkotlinx/serialization/json/internal/JsonPath;

    .line 41
    .line 42
    iget p1, p0, Lkotlinx/serialization/json/internal/JsonPath;->d:I

    .line 43
    .line 44
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonPath;->c:[I

    .line 45
    .line 46
    aget v2, v0, p1

    .line 47
    .line 48
    const/4 v3, -0x2

    .line 49
    if-ne v2, v3, :cond_2

    .line 50
    .line 51
    aput v1, v0, p1

    .line 52
    .line 53
    add-int/2addr p1, v1

    .line 54
    iput p1, p0, Lkotlinx/serialization/json/internal/JsonPath;->d:I

    .line 55
    .line 56
    :cond_2
    iget p1, p0, Lkotlinx/serialization/json/internal/JsonPath;->d:I

    .line 57
    .line 58
    if-eq p1, v1, :cond_3

    .line 59
    .line 60
    add-int/2addr p1, v1

    .line 61
    iput p1, p0, Lkotlinx/serialization/json/internal/JsonPath;->d:I

    .line 62
    .line 63
    :cond_3
    return-void

    .line 64
    :cond_4
    iget-object p0, v2, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    .line 65
    .line 66
    const-string p0, ""

    .line 67
    .line 68
    invoke-static {p1, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->b(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x0

    .line 72
    throw p0
.end method

.method public final b()Lkotlinx/serialization/modules/SerializersModule;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->d:Lkotlinx/serialization/modules/SerializersModule;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->a:Lkotlinx/serialization/json/Json;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Lkotlinx/serialization/json/internal/WriteMode;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v4, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 11
    .line 12
    iget-object v1, v4, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->c:Lkotlinx/serialization/json/internal/JsonPath;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget v2, v1, Lkotlinx/serialization/json/internal/JsonPath;->d:I

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    add-int/2addr v2, v5

    .line 21
    iput v2, v1, Lkotlinx/serialization/json/internal/JsonPath;->d:I

    .line 22
    .line 23
    iget-object v6, v1, Lkotlinx/serialization/json/internal/JsonPath;->b:[Ljava/lang/Object;

    .line 24
    .line 25
    array-length v6, v6

    .line 26
    if-ne v2, v6, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/JsonPath;->b()V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v1, v1, Lkotlinx/serialization/json/internal/JsonPath;->b:[Ljava/lang/Object;

    .line 32
    .line 33
    aput-object p1, v1, v2

    .line 34
    .line 35
    iget-char v1, v3, Lkotlinx/serialization/json/internal/WriteMode;->j:C

    .line 36
    .line 37
    invoke-virtual {v4, v1}, Lkotlinx/serialization/json/internal/StringJsonLexer;->s(C)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->l()B

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x4

    .line 45
    if-eq v1, v2, :cond_3

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eq v1, v5, :cond_2

    .line 52
    .line 53
    const/4 v2, 0x2

    .line 54
    if-eq v1, v2, :cond_2

    .line 55
    .line 56
    const/4 v2, 0x3

    .line 57
    if-eq v1, v2, :cond_2

    .line 58
    .line 59
    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->b:Lkotlinx/serialization/json/internal/WriteMode;

    .line 60
    .line 61
    if-ne v1, v3, :cond_1

    .line 62
    .line 63
    iget-object v0, v0, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    .line 64
    .line 65
    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->a:Z

    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    return-object p0

    .line 70
    :cond_1
    new-instance v1, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    .line 71
    .line 72
    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->a:Lkotlinx/serialization/json/Json;

    .line 73
    .line 74
    const/4 v6, 0x0

    .line 75
    move-object v5, p1

    .line 76
    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/StringJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;)V

    .line 77
    .line 78
    .line 79
    return-object v1

    .line 80
    :cond_2
    move-object v5, p1

    .line 81
    new-instance v1, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    .line 82
    .line 83
    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->a:Lkotlinx/serialization/json/Json;

    .line 84
    .line 85
    const/4 v6, 0x0

    .line 86
    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/StringJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;)V

    .line 87
    .line 88
    .line 89
    return-object v1

    .line 90
    :cond_3
    const/4 p0, 0x0

    .line 91
    const/4 p1, 0x6

    .line 92
    const-string v0, "Unexpected leading comma"

    .line 93
    .line 94
    const/4 v1, 0x0

    .line 95
    invoke-static {v4, v0, p0, v1, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    throw v1
.end method

.method public final f()Z
    .locals 11

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->o()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->f:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string v3, "EOF"

    .line 14
    .line 15
    const/4 v4, 0x6

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    if-eq v0, v2, :cond_7

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/16 v7, 0x22

    .line 25
    .line 26
    const/4 v8, 0x1

    .line 27
    if-ne v2, v7, :cond_0

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    move v2, v8

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v2, v6

    .line 34
    :goto_0
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->n(I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    if-ge v0, v9, :cond_6

    .line 43
    .line 44
    const/4 v9, -0x1

    .line 45
    if-eq v0, v9, :cond_6

    .line 46
    .line 47
    add-int/lit8 v9, v0, 0x1

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    or-int/lit8 v0, v0, 0x20

    .line 54
    .line 55
    const/16 v10, 0x66

    .line 56
    .line 57
    if-eq v0, v10, :cond_2

    .line 58
    .line 59
    const/16 v10, 0x74

    .line 60
    .line 61
    if-ne v0, v10, :cond_1

    .line 62
    .line 63
    const-string v0, "rue"

    .line 64
    .line 65
    invoke-virtual {p0, v9, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b(ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    move v0, v8

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v1, "Expected valid boolean literal prefix, but had \'"

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->h()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const/16 v1, 0x27

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {p0, v0, v6, v5, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 94
    .line 95
    .line 96
    throw v5

    .line 97
    :cond_2
    const-string v0, "alse"

    .line 98
    .line 99
    invoke-virtual {p0, v9, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b(ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    move v0, v6

    .line 103
    :goto_1
    if-eqz v2, :cond_5

    .line 104
    .line 105
    iget v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-eq v2, v9, :cond_4

    .line 112
    .line 113
    iget v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-ne v1, v7, :cond_3

    .line 120
    .line 121
    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 122
    .line 123
    add-int/2addr v1, v8

    .line 124
    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 125
    .line 126
    return v0

    .line 127
    :cond_3
    const-string v0, "Expected closing quotation mark"

    .line 128
    .line 129
    invoke-static {p0, v0, v6, v5, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    throw v5

    .line 133
    :cond_4
    invoke-static {p0, v3, v6, v5, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    throw v5

    .line 137
    :cond_5
    return v0

    .line 138
    :cond_6
    invoke-static {p0, v3, v6, v5, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 139
    .line 140
    .line 141
    throw v5

    .line 142
    :cond_7
    invoke-static {p0, v3, v6, v5, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    throw v5
.end method

.method public final h()C
    .locals 4

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->h()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "Expected single char, but got \'"

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v0, 0x27

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x6

    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-static {p0, v0, v3, v2, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    throw v2
.end method

.method public final l()Lkotlinx/serialization/json/JsonElement;
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/serialization/json/internal/JsonTreeReader;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->a:Lkotlinx/serialization/json/Json;

    .line 4
    .line 5
    iget-object v1, v1, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    .line 6
    .line 7
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 8
    .line 9
    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/json/internal/StringJsonLexer;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->b()Lkotlinx/serialization/json/JsonElement;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final m()I
    .locals 5

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->f()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int v2, v0

    .line 8
    int-to-long v3, v2

    .line 9
    cmp-long v3, v0, v3

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "Failed to parse int for input \'"

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/16 v0, 0x27

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x6

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static {p0, v0, v1, v3, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    throw v3
.end method

.method public final n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object p4, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 2
    .line 3
    iget-object p4, p4, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->c:Lkotlinx/serialization/json/internal/JsonPath;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->b:Lkotlinx/serialization/json/internal/WriteMode;

    .line 12
    .line 13
    sget-object v0, Lkotlinx/serialization/json/internal/WriteMode;->n:Lkotlinx/serialization/json/internal/WriteMode;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    and-int/lit8 p1, p2, 0x1

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    move p1, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    const/4 p2, -0x2

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object v0, p4, Lkotlinx/serialization/json/internal/JsonPath;->c:[I

    .line 29
    .line 30
    iget v2, p4, Lkotlinx/serialization/json/internal/JsonPath;->d:I

    .line 31
    .line 32
    aget v0, v0, v2

    .line 33
    .line 34
    if-ne v0, p2, :cond_1

    .line 35
    .line 36
    iget-object v0, p4, Lkotlinx/serialization/json/internal/JsonPath;->b:[Ljava/lang/Object;

    .line 37
    .line 38
    sget-object v3, Lkotlinx/serialization/json/internal/JsonPath$Tombstone;->a:Lkotlinx/serialization/json/internal/JsonPath$Tombstone;

    .line 39
    .line 40
    aput-object v3, v0, v2

    .line 41
    .line 42
    :cond_1
    invoke-virtual {p0, p3}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->x(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-eqz p1, :cond_4

    .line 47
    .line 48
    iget-object p1, p4, Lkotlinx/serialization/json/internal/JsonPath;->c:[I

    .line 49
    .line 50
    iget p3, p4, Lkotlinx/serialization/json/internal/JsonPath;->d:I

    .line 51
    .line 52
    aget p1, p1, p3

    .line 53
    .line 54
    if-eq p1, p2, :cond_2

    .line 55
    .line 56
    add-int/2addr p3, v1

    .line 57
    iput p3, p4, Lkotlinx/serialization/json/internal/JsonPath;->d:I

    .line 58
    .line 59
    iget-object p1, p4, Lkotlinx/serialization/json/internal/JsonPath;->b:[Ljava/lang/Object;

    .line 60
    .line 61
    array-length p1, p1

    .line 62
    if-ne p3, p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p4}, Lkotlinx/serialization/json/internal/JsonPath;->b()V

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object p1, p4, Lkotlinx/serialization/json/internal/JsonPath;->b:[Ljava/lang/Object;

    .line 68
    .line 69
    iget p3, p4, Lkotlinx/serialization/json/internal/JsonPath;->d:I

    .line 70
    .line 71
    iget-object v0, p4, Lkotlinx/serialization/json/internal/JsonPath;->a:Lkotlinx/serialization/json/JsonConfiguration;

    .line 72
    .line 73
    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->f:Z

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    move-object v0, p0

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    sget-object v0, Lkotlinx/serialization/json/internal/JsonPath$RedactedKey;->a:Lkotlinx/serialization/json/internal/JsonPath$RedactedKey;

    .line 80
    .line 81
    :goto_1
    aput-object v0, p1, p3

    .line 82
    .line 83
    iget-object p1, p4, Lkotlinx/serialization/json/internal/JsonPath;->c:[I

    .line 84
    .line 85
    aput p2, p1, p3

    .line 86
    .line 87
    :cond_4
    return-object p0
.end method

.method public final o()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->g()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final q()J
    .locals 2

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->f()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final r()Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->f:Lkotlinx/serialization/json/internal/JsonElementMarker;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iget-boolean v1, v1, Lkotlinx/serialization/json/internal/JsonElementMarker;->b:Z

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v0

    .line 10
    :goto_0
    if-nez v1, :cond_6

    .line 11
    .line 12
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 13
    .line 14
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->o()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->n(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->f:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    sub-int/2addr v3, v1

    .line 29
    const/4 v4, 0x1

    .line 30
    const/4 v5, 0x4

    .line 31
    if-lt v3, v5, :cond_5

    .line 32
    .line 33
    const/4 v6, -0x1

    .line 34
    if-ne v1, v6, :cond_1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    move v6, v0

    .line 38
    :goto_1
    if-ge v6, v5, :cond_3

    .line 39
    .line 40
    const-string v7, "null"

    .line 41
    .line 42
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    add-int v8, v1, v6

    .line 47
    .line 48
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-eq v7, v8, :cond_2

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    if-le v3, v5, :cond_4

    .line 59
    .line 60
    add-int/lit8 v3, v1, 0x4

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-static {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->a(C)B

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_4

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    add-int/2addr v1, v5

    .line 74
    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 75
    .line 76
    move p0, v4

    .line 77
    goto :goto_3

    .line 78
    :cond_5
    :goto_2
    move p0, v0

    .line 79
    :goto_3
    if-nez p0, :cond_6

    .line 80
    .line 81
    return v4

    .line 82
    :cond_6
    return v0
.end method

.method public final s(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 6
    .line 7
    iget-object v3, v2, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->c:Lkotlinx/serialization/json/internal/JsonPath;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v4, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->b:Lkotlinx/serialization/json/internal/WriteMode;

    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    const/4 v6, 0x6

    .line 19
    const/16 v7, 0x3a

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v9, 0x2

    .line 23
    iget-object v10, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->a:Lkotlinx/serialization/json/Json;

    .line 24
    .line 25
    const/4 v11, 0x1

    .line 26
    const/4 v12, -0x1

    .line 27
    const/4 v13, 0x0

    .line 28
    if-eqz v5, :cond_e

    .line 29
    .line 30
    if-eq v5, v9, :cond_4

    .line 31
    .line 32
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->p()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/StringJsonLexer;->r()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    iget v5, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->e:I

    .line 43
    .line 44
    if-eq v5, v12, :cond_1

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string v0, "Expected end of the array or comma"

    .line 50
    .line 51
    invoke-static {v2, v0, v8, v13, v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    throw v13

    .line 55
    :cond_1
    :goto_0
    add-int/lit8 v12, v5, 0x1

    .line 56
    .line 57
    iput v12, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->e:I

    .line 58
    .line 59
    goto/16 :goto_f

    .line 60
    .line 61
    :cond_2
    if-nez v1, :cond_3

    .line 62
    .line 63
    goto/16 :goto_f

    .line 64
    .line 65
    :cond_3
    iget-object v0, v10, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    .line 66
    .line 67
    const-string v0, "array"

    .line 68
    .line 69
    invoke-static {v2, v0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->b(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v13

    .line 73
    :cond_4
    iget v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->e:I

    .line 74
    .line 75
    rem-int/lit8 v5, v1, 0x2

    .line 76
    .line 77
    if-eqz v5, :cond_5

    .line 78
    .line 79
    move v5, v11

    .line 80
    goto :goto_1

    .line 81
    :cond_5
    move v5, v8

    .line 82
    :goto_1
    if-eqz v5, :cond_6

    .line 83
    .line 84
    if-eq v1, v12, :cond_7

    .line 85
    .line 86
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->p()Z

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    goto :goto_2

    .line 91
    :cond_6
    invoke-virtual {v2, v7}, Lkotlinx/serialization/json/internal/StringJsonLexer;->s(C)V

    .line 92
    .line 93
    .line 94
    :cond_7
    :goto_2
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/StringJsonLexer;->r()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_c

    .line 99
    .line 100
    if-eqz v5, :cond_b

    .line 101
    .line 102
    iget v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->e:I

    .line 103
    .line 104
    iget v5, v2, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 105
    .line 106
    const/4 v6, 0x4

    .line 107
    if-ne v1, v12, :cond_9

    .line 108
    .line 109
    if-nez v8, :cond_8

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_8
    const-string v0, "Unexpected leading comma"

    .line 113
    .line 114
    invoke-static {v2, v0, v5, v13, v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    throw v13

    .line 118
    :cond_9
    if-eqz v8, :cond_a

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_a
    const-string v0, "Expected comma after the key-value pair"

    .line 122
    .line 123
    invoke-static {v2, v0, v5, v13, v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    throw v13

    .line 127
    :cond_b
    :goto_3
    iget v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->e:I

    .line 128
    .line 129
    add-int/lit8 v12, v1, 0x1

    .line 130
    .line 131
    iput v12, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->e:I

    .line 132
    .line 133
    goto/16 :goto_f

    .line 134
    .line 135
    :cond_c
    if-nez v8, :cond_d

    .line 136
    .line 137
    goto/16 :goto_f

    .line 138
    .line 139
    :cond_d
    iget-object v0, v10, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    .line 140
    .line 141
    invoke-static {v2}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->c(Lkotlinx/serialization/json/internal/StringJsonLexer;)V

    .line 142
    .line 143
    .line 144
    throw v13

    .line 145
    :cond_e
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->p()Z

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    :goto_4
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/StringJsonLexer;->r()Z

    .line 150
    .line 151
    .line 152
    move-result v14

    .line 153
    const/16 v15, 0x40

    .line 154
    .line 155
    const-wide/16 v16, 0x1

    .line 156
    .line 157
    move-object/from16 v18, v13

    .line 158
    .line 159
    iget-object v13, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->f:Lkotlinx/serialization/json/internal/JsonElementMarker;

    .line 160
    .line 161
    if-eqz v14, :cond_26

    .line 162
    .line 163
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/StringJsonLexer;->c()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-virtual {v2, v7}, Lkotlinx/serialization/json/internal/StringJsonLexer;->s(C)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-static {v1, v10}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)V

    .line 180
    .line 181
    .line 182
    invoke-interface {v1, v5}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d(Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v14

    .line 186
    const/4 v7, -0x3

    .line 187
    if-eq v14, v7, :cond_f

    .line 188
    .line 189
    move/from16 v20, v11

    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_f
    move/from16 v20, v11

    .line 193
    .line 194
    iget-object v11, v10, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    .line 195
    .line 196
    iget-boolean v11, v11, Lkotlinx/serialization/json/JsonConfiguration;->d:Z

    .line 197
    .line 198
    if-nez v11, :cond_10

    .line 199
    .line 200
    goto :goto_7

    .line 201
    :cond_10
    iget-object v11, v10, Lkotlinx/serialization/json/Json;->c:Lkotlinx/serialization/json/internal/DescriptorSchemaCache;

    .line 202
    .line 203
    new-instance v14, Lp0;

    .line 204
    .line 205
    const/16 v6, 0x13

    .line 206
    .line 207
    invoke-direct {v14, v6, v1, v10}, Lp0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    iget-object v6, v11, Lkotlinx/serialization/json/internal/DescriptorSchemaCache;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 214
    .line 215
    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v11

    .line 219
    check-cast v11, Ljava/util/Map;

    .line 220
    .line 221
    sget-object v8, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->a:Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;

    .line 222
    .line 223
    if-eqz v11, :cond_11

    .line 224
    .line 225
    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v11

    .line 229
    goto :goto_5

    .line 230
    :cond_11
    move-object/from16 v11, v18

    .line 231
    .line 232
    :goto_5
    if-nez v11, :cond_12

    .line 233
    .line 234
    move-object/from16 v11, v18

    .line 235
    .line 236
    :cond_12
    if-eqz v11, :cond_13

    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_13
    invoke-virtual {v14}, Lp0;->a()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v11

    .line 243
    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v14

    .line 247
    if-nez v14, :cond_14

    .line 248
    .line 249
    new-instance v14, Ljava/util/concurrent/ConcurrentHashMap;

    .line 250
    .line 251
    invoke-direct {v14, v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v6, v1, v14}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    :cond_14
    check-cast v14, Ljava/util/Map;

    .line 258
    .line 259
    invoke-interface {v14, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    :goto_6
    check-cast v11, Ljava/util/Map;

    .line 263
    .line 264
    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    check-cast v6, Ljava/lang/Integer;

    .line 269
    .line 270
    if-eqz v6, :cond_15

    .line 271
    .line 272
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 273
    .line 274
    .line 275
    move-result v14

    .line 276
    goto :goto_7

    .line 277
    :cond_15
    move v14, v7

    .line 278
    :goto_7
    if-eq v14, v7, :cond_18

    .line 279
    .line 280
    if-eqz v13, :cond_16

    .line 281
    .line 282
    iget-object v0, v13, Lkotlinx/serialization/json/internal/JsonElementMarker;->a:Lkotlinx/serialization/internal/ElementMarker;

    .line 283
    .line 284
    if-ge v14, v15, :cond_17

    .line 285
    .line 286
    iget-wide v1, v0, Lkotlinx/serialization/internal/ElementMarker;->c:J

    .line 287
    .line 288
    shl-long v5, v16, v14

    .line 289
    .line 290
    or-long/2addr v1, v5

    .line 291
    iput-wide v1, v0, Lkotlinx/serialization/internal/ElementMarker;->c:J

    .line 292
    .line 293
    :cond_16
    :goto_8
    move v12, v14

    .line 294
    goto/16 :goto_f

    .line 295
    .line 296
    :cond_17
    ushr-int/lit8 v1, v14, 0x6

    .line 297
    .line 298
    add-int/lit8 v1, v1, -0x1

    .line 299
    .line 300
    and-int/lit8 v2, v14, 0x3f

    .line 301
    .line 302
    iget-object v0, v0, Lkotlinx/serialization/internal/ElementMarker;->d:[J

    .line 303
    .line 304
    aget-wide v5, v0, v1

    .line 305
    .line 306
    shl-long v7, v16, v2

    .line 307
    .line 308
    or-long/2addr v5, v7

    .line 309
    aput-wide v5, v0, v1

    .line 310
    .line 311
    goto :goto_8

    .line 312
    :cond_18
    invoke-static {v1, v10}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Z

    .line 313
    .line 314
    .line 315
    move-result v6

    .line 316
    if-nez v6, :cond_1b

    .line 317
    .line 318
    iget v0, v3, Lkotlinx/serialization/json/internal/JsonPath;->d:I

    .line 319
    .line 320
    iget-object v1, v3, Lkotlinx/serialization/json/internal/JsonPath;->c:[I

    .line 321
    .line 322
    aget v4, v1, v0

    .line 323
    .line 324
    const/4 v6, -0x2

    .line 325
    if-ne v4, v6, :cond_19

    .line 326
    .line 327
    aput v12, v1, v0

    .line 328
    .line 329
    add-int/2addr v0, v12

    .line 330
    iput v0, v3, Lkotlinx/serialization/json/internal/JsonPath;->d:I

    .line 331
    .line 332
    :cond_19
    iget v0, v3, Lkotlinx/serialization/json/internal/JsonPath;->d:I

    .line 333
    .line 334
    if-eq v0, v12, :cond_1a

    .line 335
    .line 336
    add-int/2addr v0, v12

    .line 337
    iput v0, v3, Lkotlinx/serialization/json/internal/JsonPath;->d:I

    .line 338
    .line 339
    :cond_1a
    iget v0, v2, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 340
    .line 341
    iget-object v1, v2, Lkotlinx/serialization/json/internal/StringJsonLexer;->f:Ljava/lang/String;

    .line 342
    .line 343
    const/4 v3, 0x0

    .line 344
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    const/4 v1, 0x6

    .line 353
    invoke-static {v0, v1, v5}, Lkotlin/text/StringsKt;->w(Ljava/lang/String;ILjava/lang/String;)I

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    const-string v3, "Encountered an unknown key \'"

    .line 360
    .line 361
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    const/16 v3, 0x27

    .line 368
    .line 369
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    const-string v3, "Use \'ignoreUnknownKeys = true\' in \'Json {}\' builder or \'@JsonIgnoreUnknownKeys\' annotation to ignore unknown keys."

    .line 377
    .line 378
    invoke-virtual {v2, v1, v0, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 379
    .line 380
    .line 381
    throw v18

    .line 382
    :cond_1b
    new-instance v6, Ljava/util/ArrayList;

    .line 383
    .line 384
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->l()B

    .line 388
    .line 389
    .line 390
    move-result v5

    .line 391
    const/16 v7, 0x8

    .line 392
    .line 393
    const/4 v8, 0x6

    .line 394
    if-eq v5, v7, :cond_1c

    .line 395
    .line 396
    if-eq v5, v8, :cond_1c

    .line 397
    .line 398
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->h()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move/from16 v11, v20

    .line 402
    .line 403
    const/4 v14, 0x0

    .line 404
    goto/16 :goto_c

    .line 405
    .line 406
    :cond_1c
    :goto_9
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->l()B

    .line 407
    .line 408
    .line 409
    move-result v5

    .line 410
    move/from16 v11, v20

    .line 411
    .line 412
    if-ne v5, v11, :cond_1d

    .line 413
    .line 414
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/StringJsonLexer;->c()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move/from16 v20, v11

    .line 418
    .line 419
    goto :goto_9

    .line 420
    :cond_1d
    if-eq v5, v7, :cond_1e

    .line 421
    .line 422
    if-ne v5, v8, :cond_1f

    .line 423
    .line 424
    :cond_1e
    const/4 v14, 0x0

    .line 425
    goto :goto_a

    .line 426
    :cond_1f
    const/16 v13, 0x9

    .line 427
    .line 428
    if-ne v5, v13, :cond_21

    .line 429
    .line 430
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v5

    .line 434
    check-cast v5, Ljava/lang/Number;

    .line 435
    .line 436
    invoke-virtual {v5}, Ljava/lang/Number;->byteValue()B

    .line 437
    .line 438
    .line 439
    move-result v5

    .line 440
    if-ne v5, v7, :cond_20

    .line 441
    .line 442
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->L(Ljava/util/List;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    const/4 v14, 0x0

    .line 446
    goto :goto_b

    .line 447
    :cond_20
    const-string v0, "found ] instead of }"

    .line 448
    .line 449
    move-object/from16 v13, v18

    .line 450
    .line 451
    const/4 v14, 0x0

    .line 452
    invoke-static {v2, v0, v14, v13, v8}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 453
    .line 454
    .line 455
    throw v13

    .line 456
    :cond_21
    move-object/from16 v13, v18

    .line 457
    .line 458
    const/4 v14, 0x0

    .line 459
    const/4 v15, 0x7

    .line 460
    if-ne v5, v15, :cond_23

    .line 461
    .line 462
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v5

    .line 466
    check-cast v5, Ljava/lang/Number;

    .line 467
    .line 468
    invoke-virtual {v5}, Ljava/lang/Number;->byteValue()B

    .line 469
    .line 470
    .line 471
    move-result v5

    .line 472
    if-ne v5, v8, :cond_22

    .line 473
    .line 474
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->L(Ljava/util/List;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    goto :goto_b

    .line 478
    :cond_22
    const-string v0, "found } instead of ]"

    .line 479
    .line 480
    invoke-static {v2, v0, v14, v13, v8}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 481
    .line 482
    .line 483
    throw v13

    .line 484
    :cond_23
    const/16 v15, 0xa

    .line 485
    .line 486
    if-eq v5, v15, :cond_24

    .line 487
    .line 488
    goto :goto_b

    .line 489
    :cond_24
    const-string v0, "Unexpected end of input due to malformed JSON during ignoring unknown keys"

    .line 490
    .line 491
    invoke-static {v2, v0, v14, v13, v8}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 492
    .line 493
    .line 494
    throw v13

    .line 495
    :goto_a
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 496
    .line 497
    .line 498
    move-result-object v5

    .line 499
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    :goto_b
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/StringJsonLexer;->d()B

    .line 503
    .line 504
    .line 505
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 506
    .line 507
    .line 508
    move-result v5

    .line 509
    if-nez v5, :cond_25

    .line 510
    .line 511
    :goto_c
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->p()Z

    .line 512
    .line 513
    .line 514
    move-result v5

    .line 515
    move v6, v8

    .line 516
    move v8, v14

    .line 517
    const/16 v7, 0x3a

    .line 518
    .line 519
    const/4 v13, 0x0

    .line 520
    goto/16 :goto_4

    .line 521
    .line 522
    :cond_25
    move/from16 v20, v11

    .line 523
    .line 524
    const/16 v18, 0x0

    .line 525
    .line 526
    goto :goto_9

    .line 527
    :cond_26
    move v14, v8

    .line 528
    if-nez v5, :cond_2d

    .line 529
    .line 530
    if-eqz v13, :cond_2b

    .line 531
    .line 532
    iget-object v0, v13, Lkotlinx/serialization/json/internal/JsonElementMarker;->a:Lkotlinx/serialization/internal/ElementMarker;

    .line 533
    .line 534
    iget-object v1, v0, Lkotlinx/serialization/internal/ElementMarker;->b:Lkotlin/jvm/functions/Function2;

    .line 535
    .line 536
    iget-object v2, v0, Lkotlinx/serialization/internal/ElementMarker;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 537
    .line 538
    invoke-interface {v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()I

    .line 539
    .line 540
    .line 541
    move-result v5

    .line 542
    :cond_27
    iget-wide v6, v0, Lkotlinx/serialization/internal/ElementMarker;->c:J

    .line 543
    .line 544
    const-wide/16 v8, -0x1

    .line 545
    .line 546
    cmp-long v10, v6, v8

    .line 547
    .line 548
    if-eqz v10, :cond_28

    .line 549
    .line 550
    not-long v6, v6

    .line 551
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 552
    .line 553
    .line 554
    move-result v6

    .line 555
    iget-wide v7, v0, Lkotlinx/serialization/internal/ElementMarker;->c:J

    .line 556
    .line 557
    shl-long v9, v16, v6

    .line 558
    .line 559
    or-long/2addr v7, v9

    .line 560
    iput-wide v7, v0, Lkotlinx/serialization/internal/ElementMarker;->c:J

    .line 561
    .line 562
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 563
    .line 564
    .line 565
    move-result-object v7

    .line 566
    move-object v8, v1

    .line 567
    check-cast v8, Lkotlinx/serialization/json/internal/JsonElementMarker$origin$1;

    .line 568
    .line 569
    invoke-virtual {v8, v2, v7}, Lkotlinx/serialization/json/internal/JsonElementMarker$origin$1;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v7

    .line 573
    check-cast v7, Ljava/lang/Boolean;

    .line 574
    .line 575
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 576
    .line 577
    .line 578
    move-result v7

    .line 579
    if-eqz v7, :cond_27

    .line 580
    .line 581
    move v12, v6

    .line 582
    goto :goto_f

    .line 583
    :cond_28
    if-le v5, v15, :cond_2b

    .line 584
    .line 585
    iget-object v0, v0, Lkotlinx/serialization/internal/ElementMarker;->d:[J

    .line 586
    .line 587
    array-length v5, v0

    .line 588
    :goto_d
    if-ge v14, v5, :cond_2b

    .line 589
    .line 590
    add-int/lit8 v6, v14, 0x1

    .line 591
    .line 592
    mul-int/lit8 v7, v6, 0x40

    .line 593
    .line 594
    aget-wide v10, v0, v14

    .line 595
    .line 596
    :goto_e
    cmp-long v13, v10, v8

    .line 597
    .line 598
    if-eqz v13, :cond_2a

    .line 599
    .line 600
    not-long v8, v10

    .line 601
    invoke-static {v8, v9}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 602
    .line 603
    .line 604
    move-result v8

    .line 605
    shl-long v18, v16, v8

    .line 606
    .line 607
    or-long v10, v10, v18

    .line 608
    .line 609
    add-int/2addr v8, v7

    .line 610
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 611
    .line 612
    .line 613
    move-result-object v9

    .line 614
    move-object v13, v1

    .line 615
    check-cast v13, Lkotlinx/serialization/json/internal/JsonElementMarker$origin$1;

    .line 616
    .line 617
    invoke-virtual {v13, v2, v9}, Lkotlinx/serialization/json/internal/JsonElementMarker$origin$1;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object v9

    .line 621
    check-cast v9, Ljava/lang/Boolean;

    .line 622
    .line 623
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 624
    .line 625
    .line 626
    move-result v9

    .line 627
    if-eqz v9, :cond_29

    .line 628
    .line 629
    aput-wide v10, v0, v14

    .line 630
    .line 631
    move v12, v8

    .line 632
    goto :goto_f

    .line 633
    :cond_29
    const-wide/16 v8, -0x1

    .line 634
    .line 635
    goto :goto_e

    .line 636
    :cond_2a
    aput-wide v10, v0, v14

    .line 637
    .line 638
    move v14, v6

    .line 639
    const-wide/16 v8, -0x1

    .line 640
    .line 641
    goto :goto_d

    .line 642
    :cond_2b
    :goto_f
    sget-object v0, Lkotlinx/serialization/json/internal/WriteMode;->n:Lkotlinx/serialization/json/internal/WriteMode;

    .line 643
    .line 644
    if-eq v4, v0, :cond_2c

    .line 645
    .line 646
    iget-object v0, v3, Lkotlinx/serialization/json/internal/JsonPath;->c:[I

    .line 647
    .line 648
    iget v1, v3, Lkotlinx/serialization/json/internal/JsonPath;->d:I

    .line 649
    .line 650
    aput v12, v0, v1

    .line 651
    .line 652
    :cond_2c
    return v12

    .line 653
    :cond_2d
    iget-object v0, v10, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    .line 654
    .line 655
    invoke-static {v2}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->c(Lkotlinx/serialization/json/internal/StringJsonLexer;)V

    .line 656
    .line 657
    .line 658
    const/16 v18, 0x0

    .line 659
    .line 660
    throw v18
.end method

.method public final t()Lkotlinx/serialization/json/Json;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->a:Lkotlinx/serialization/json/Json;

    .line 2
    .line 3
    return-object p0
.end method

.method public final u(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoderKt;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;

    .line 11
    .line 12
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 13
    .line 14
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->a:Lkotlinx/serialization/json/Json;

    .line 15
    .line 16
    invoke-direct {p1, v0, p0}, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;-><init>(Lkotlinx/serialization/json/internal/StringJsonLexer;Lkotlinx/serialization/json/Json;)V

    .line 17
    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    return-object p0
.end method

.method public final x(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    .line 5
    .line 6
    if-eqz v0, :cond_a

    .line 7
    .line 8
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->a:Lkotlinx/serialization/json/Json;

    .line 9
    .line 10
    iget-object v1, v0, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    .line 11
    .line 12
    move-object v1, p1

    .line 13
    check-cast v1, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    .line 14
    .line 15
    check-cast v1, Lkotlinx/serialization/PolymorphicSerializer;

    .line 16
    .line 17
    invoke-interface {v1}, Lkotlinx/serialization/SerializationStrategy;->c()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2, v0}, Lkotlinx/serialization/json/internal/PolymorphicKt;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 29
    .line 30
    iget v4, v3, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    :try_start_0
    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/StringJsonLexer;->d()B

    .line 34
    .line 35
    .line 36
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    const/4 v7, 0x6

    .line 38
    if-eq v6, v7, :cond_0

    .line 39
    .line 40
    :goto_0
    iput v4, v3, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 41
    .line 42
    iput-object v5, v3, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->d:Ljava/lang/String;

    .line 43
    .line 44
    move-object v2, v5

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->m()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iput-object v5, v3, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->d:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/StringJsonLexer;->d()B

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    const/4 v6, 0x5

    .line 64
    if-eq v2, v6, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->m()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    iput v4, v3, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 72
    .line 73
    iput-object v5, v3, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->d:Ljava/lang/String;

    .line 74
    .line 75
    :goto_1
    const/4 v4, -0x1

    .line 76
    if-nez v2, :cond_8

    .line 77
    .line 78
    iget-object v2, v0, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    .line 79
    .line 80
    invoke-interface {v1}, Lkotlinx/serialization/SerializationStrategy;->c()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v2, v0}, Lkotlinx/serialization/json/internal/PolymorphicKt;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->l()Lkotlinx/serialization/json/JsonElement;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-interface {v1}, Lkotlinx/serialization/SerializationStrategy;->c()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->a()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    instance-of v7, v6, Lkotlinx/serialization/json/JsonObject;

    .line 101
    .line 102
    if-nez v7, :cond_4

    .line 103
    .line 104
    new-instance p0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string p1, "Expected "

    .line 107
    .line 108
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-class p1, Lkotlinx/serialization/json/JsonObject;

    .line 112
    .line 113
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->c()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string p1, ", but had "

    .line 125
    .line 126
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->c()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string p1, " as the serialized body of "

    .line 145
    .line 146
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    iget-object p1, v3, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->c:Lkotlinx/serialization/json/internal/JsonPath;

    .line 157
    .line 158
    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/JsonPath;->a()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    iget-object v0, v0, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    .line 163
    .line 164
    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->f:Z

    .line 165
    .line 166
    if-eqz v0, :cond_3

    .line 167
    .line 168
    invoke-static {v6, v4}, Lq;->m(Lkotlinx/serialization/json/JsonElement;I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    goto :goto_2

    .line 173
    :cond_3
    move-object v0, v5

    .line 174
    :goto_2
    new-instance v1, Lkotlinx/serialization/json/JsonDecodingException;

    .line 175
    .line 176
    invoke-static {v4, p0, p1, v5, v0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-direct {v1, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw v1

    .line 184
    :cond_4
    check-cast v6, Lkotlinx/serialization/json/JsonObject;

    .line 185
    .line 186
    invoke-virtual {v6, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    .line 191
    .line 192
    if-eqz v1, :cond_6

    .line 193
    .line 194
    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->a(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    instance-of v2, v1, Lkotlinx/serialization/json/JsonNull;

    .line 199
    .line 200
    if-eqz v2, :cond_5

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_5
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonPrimitive;->b()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    goto :goto_4

    .line 208
    :cond_6
    :goto_3
    move-object v1, v5

    .line 209
    :goto_4
    :try_start_2
    check-cast p1, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    .line 210
    .line 211
    invoke-static {p1, p0, v1}, Lkotlinx/serialization/PolymorphicSerializerKt;->a(Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;Lkotlinx/serialization/encoding/CompositeDecoder;Ljava/lang/String;)Lkotlinx/serialization/DeserializationStrategy;

    .line 212
    .line 213
    .line 214
    throw v5
    :try_end_2
    .catch Lkotlinx/serialization/SerializationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 215
    :catch_0
    move-exception p0

    .line 216
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    iget-object p1, v0, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    .line 224
    .line 225
    iget-boolean p1, p1, Lkotlinx/serialization/json/JsonConfiguration;->f:Z

    .line 226
    .line 227
    if-eqz p1, :cond_7

    .line 228
    .line 229
    invoke-virtual {v6}, Lkotlinx/serialization/json/JsonObject;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-static {p1, v4}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->d(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    goto :goto_5

    .line 242
    :cond_7
    move-object p1, v5

    .line 243
    :goto_5
    new-instance v0, Lkotlinx/serialization/json/JsonDecodingException;

    .line 244
    .line 245
    invoke-static {v4, p0, v5, v5, p1}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw v0

    .line 253
    :cond_8
    :try_start_3
    check-cast p1, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    .line 254
    .line 255
    invoke-static {p1, p0, v2}, Lkotlinx/serialization/PolymorphicSerializerKt;->a(Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;Lkotlinx/serialization/encoding/CompositeDecoder;Ljava/lang/String;)Lkotlinx/serialization/DeserializationStrategy;

    .line 256
    .line 257
    .line 258
    throw v5
    :try_end_3
    .catch Lkotlinx/serialization/SerializationException; {:try_start_3 .. :try_end_3} :catch_1

    .line 259
    :catch_1
    move-exception p0

    .line 260
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    const/16 v0, 0xa

    .line 268
    .line 269
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;C)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    const-string v1, "."

    .line 274
    .line 275
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    const/4 v1, 0x0

    .line 287
    invoke-static {p0, v0, v1, v7}, Lkotlin/text/StringsKt;->q(Ljava/lang/CharSequence;CII)I

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-ne v0, v4, :cond_9

    .line 292
    .line 293
    const-string p0, ""

    .line 294
    .line 295
    goto :goto_6

    .line 296
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 297
    .line 298
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    :goto_6
    const/4 v0, 0x2

    .line 307
    invoke-static {v3, p1, v1, p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 308
    .line 309
    .line 310
    throw v5

    .line 311
    :catchall_0
    move-exception p0

    .line 312
    iput v4, v3, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 313
    .line 314
    iput-object v5, v3, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->d:Ljava/lang/String;

    .line 315
    .line 316
    throw p0

    .line 317
    :cond_a
    invoke-interface {p1, p0}, Lkotlinx/serialization/DeserializationStrategy;->a(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    return-object p0
.end method

.method public final y()B
    .locals 5

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->f()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int v2, v0

    .line 8
    int-to-byte v2, v2

    .line 9
    int-to-long v3, v2

    .line 10
    cmp-long v3, v0, v3

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "Failed to parse byte for input \'"

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/16 v0, 0x27

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x6

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static {p0, v0, v1, v3, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    throw v3
.end method

.method public final z()S
    .locals 5

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->f()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int v2, v0

    .line 8
    int-to-short v2, v2

    .line 9
    int-to-long v3, v2

    .line 10
    cmp-long v3, v0, v3

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "Failed to parse short for input \'"

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/16 v0, 0x27

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x6

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static {p0, v0, v1, v3, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    throw v3
.end method

.class public final Landroidx/compose/foundation/text/KeyboardOptions;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Boolean;

.field public final c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(ILjava/lang/Boolean;III)V
    .locals 2

    .line 1
    and-int/lit8 v0, p5, 0x1

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p1, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p5, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    :cond_1
    and-int/lit8 v0, p5, 0x4

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    const/4 p3, 0x0

    .line 17
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 18
    .line 19
    if-eqz p5, :cond_3

    .line 20
    .line 21
    move p4, v1

    .line 22
    :cond_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput p1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->a:I

    .line 26
    .line 27
    iput-object p2, p0, Landroidx/compose/foundation/text/KeyboardOptions;->b:Ljava/lang/Boolean;

    .line 28
    .line 29
    iput p3, p0, Landroidx/compose/foundation/text/KeyboardOptions;->c:I

    .line 30
    .line 31
    iput p4, p0, Landroidx/compose/foundation/text/KeyboardOptions;->d:I

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a(Z)Landroidx/compose/ui/text/input/ImeOptions;
    .locals 8

    .line 1
    new-instance v0, Landroidx/compose/ui/text/input/ImeOptions;

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/ui/text/input/KeyboardCapitalization;

    .line 4
    .line 5
    iget v2, p0, Landroidx/compose/foundation/text/KeyboardOptions;->a:I

    .line 6
    .line 7
    invoke-direct {v1, v2}, Landroidx/compose/ui/text/input/KeyboardCapitalization;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, -0x1

    .line 12
    if-ne v2, v4, :cond_0

    .line 13
    .line 14
    move-object v1, v3

    .line 15
    :cond_0
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget v1, v1, Landroidx/compose/ui/text/input/KeyboardCapitalization;->a:I

    .line 18
    .line 19
    :goto_0
    move v2, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 v1, 0x0

    .line 22
    goto :goto_0

    .line 23
    :goto_1
    const/4 v1, 0x1

    .line 24
    iget-object v5, p0, Landroidx/compose/foundation/text/KeyboardOptions;->b:Ljava/lang/Boolean;

    .line 25
    .line 26
    if-eqz v5, :cond_2

    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move v5, v1

    .line 34
    :goto_2
    new-instance v6, Landroidx/compose/ui/text/input/KeyboardType;

    .line 35
    .line 36
    iget v7, p0, Landroidx/compose/foundation/text/KeyboardOptions;->c:I

    .line 37
    .line 38
    invoke-direct {v6, v7}, Landroidx/compose/ui/text/input/KeyboardType;-><init>(I)V

    .line 39
    .line 40
    .line 41
    if-nez v7, :cond_3

    .line 42
    .line 43
    move-object v6, v3

    .line 44
    :cond_3
    if-eqz v6, :cond_4

    .line 45
    .line 46
    iget v6, v6, Landroidx/compose/ui/text/input/KeyboardType;->a:I

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_4
    move v6, v1

    .line 50
    :goto_3
    new-instance v7, Landroidx/compose/ui/text/input/ImeAction;

    .line 51
    .line 52
    iget p0, p0, Landroidx/compose/foundation/text/KeyboardOptions;->d:I

    .line 53
    .line 54
    invoke-direct {v7, p0}, Landroidx/compose/ui/text/input/ImeAction;-><init>(I)V

    .line 55
    .line 56
    .line 57
    if-ne p0, v4, :cond_5

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_5
    move-object v3, v7

    .line 61
    :goto_4
    if-eqz v3, :cond_6

    .line 62
    .line 63
    iget v1, v3, Landroidx/compose/ui/text/input/ImeAction;->a:I

    .line 64
    .line 65
    :cond_6
    move v4, v6

    .line 66
    sget-object v6, Landroidx/compose/ui/text/intl/LocaleList;->l:Landroidx/compose/ui/text/intl/LocaleList;

    .line 67
    .line 68
    move v3, v5

    .line 69
    move v5, v1

    .line 70
    move v1, p1

    .line 71
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/input/ImeOptions;-><init>(ZIZIILandroidx/compose/ui/text/intl/LocaleList;)V

    .line 72
    .line 73
    .line 74
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/text/KeyboardOptions;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Landroidx/compose/foundation/text/KeyboardOptions;

    .line 10
    .line 11
    iget v0, p1, Landroidx/compose/foundation/text/KeyboardOptions;->a:I

    .line 12
    .line 13
    iget v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->a:I

    .line 14
    .line 15
    if-ne v1, v0, :cond_3

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/foundation/text/KeyboardOptions;->b:Ljava/lang/Boolean;

    .line 18
    .line 19
    iget-object v1, p1, Landroidx/compose/foundation/text/KeyboardOptions;->b:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    iget v0, p0, Landroidx/compose/foundation/text/KeyboardOptions;->c:I

    .line 29
    .line 30
    iget v1, p1, Landroidx/compose/foundation/text/KeyboardOptions;->c:I

    .line 31
    .line 32
    if-ne v0, v1, :cond_3

    .line 33
    .line 34
    iget p0, p0, Landroidx/compose/foundation/text/KeyboardOptions;->d:I

    .line 35
    .line 36
    iget p1, p1, Landroidx/compose/foundation/text/KeyboardOptions;->d:I

    .line 37
    .line 38
    if-ne p0, p1, :cond_3

    .line 39
    .line 40
    :goto_0
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 43
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/foundation/text/KeyboardOptions;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Landroidx/compose/foundation/text/KeyboardOptions;->b:Ljava/lang/Boolean;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    :goto_0
    add-int/2addr v0, v2

    .line 21
    mul-int/2addr v0, v1

    .line 22
    iget v2, p0, Landroidx/compose/foundation/text/KeyboardOptions;->c:I

    .line 23
    .line 24
    invoke-static {v2, v0, v1}, Lq;->b(III)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget p0, p0, Landroidx/compose/foundation/text/KeyboardOptions;->d:I

    .line 29
    .line 30
    const/16 v1, 0x745f

    .line 31
    .line 32
    invoke-static {p0, v0, v1}, Lq;->b(III)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Landroidx/compose/foundation/text/KeyboardOptions;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->a(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroidx/compose/foundation/text/KeyboardOptions;->c:I

    .line 8
    .line 9
    invoke-static {v1}, Landroidx/compose/ui/text/input/KeyboardType;->a(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Landroidx/compose/foundation/text/KeyboardOptions;->d:I

    .line 14
    .line 15
    invoke-static {v2}, Landroidx/compose/ui/text/input/ImeAction;->a(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v4, "KeyboardOptions(capitalization="

    .line 22
    .line 23
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, ", autoCorrectEnabled="

    .line 30
    .line 31
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardOptions;->b:Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p0, ", keyboardType="

    .line 40
    .line 41
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, ", imeAction="

    .line 48
    .line 49
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p0, ", platformImeOptions=nullshowKeyboardOnFocus=null, hintLocales=null)"

    .line 56
    .line 57
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method

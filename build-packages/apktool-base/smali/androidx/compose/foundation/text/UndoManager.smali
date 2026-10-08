.class public final Landroidx/compose/foundation/text/UndoManager;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/UndoManager$Entry;
    }
.end annotation


# instance fields
.field public a:Landroidx/compose/foundation/text/UndoManager$Entry;

.field public b:Landroidx/compose/foundation/text/UndoManager$Entry;

.field public c:I

.field public d:Ljava/lang/Long;

.field public e:Z


# virtual methods
.method public final a(Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/compose/foundation/text/UndoManager;->e:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/foundation/text/UndoManager;->a:Landroidx/compose/foundation/text/UndoManager$Entry;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/compose/foundation/text/UndoManager$Entry;->b:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v0, v1

    .line 13
    :goto_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto :goto_5

    .line 20
    :cond_1
    iget-object v0, p1, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 21
    .line 22
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/compose/foundation/text/UndoManager;->a:Landroidx/compose/foundation/text/UndoManager$Entry;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    iget-object v2, v2, Landroidx/compose/foundation/text/UndoManager$Entry;->b:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    iget-object v2, v2, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 33
    .line 34
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move-object v2, v1

    .line 38
    :goto_1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object v2, p0, Landroidx/compose/foundation/text/UndoManager;->a:Landroidx/compose/foundation/text/UndoManager$Entry;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    if-eqz v2, :cond_8

    .line 47
    .line 48
    iput-object p1, v2, Landroidx/compose/foundation/text/UndoManager$Entry;->b:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    new-instance v0, Landroidx/compose/foundation/text/UndoManager$Entry;

    .line 52
    .line 53
    invoke-direct {v0, v2, p1}, Landroidx/compose/foundation/text/UndoManager$Entry;-><init>(Landroidx/compose/foundation/text/UndoManager$Entry;Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Landroidx/compose/foundation/text/UndoManager;->a:Landroidx/compose/foundation/text/UndoManager$Entry;

    .line 57
    .line 58
    iput-object v1, p0, Landroidx/compose/foundation/text/UndoManager;->b:Landroidx/compose/foundation/text/UndoManager$Entry;

    .line 59
    .line 60
    iget v0, p0, Landroidx/compose/foundation/text/UndoManager;->c:I

    .line 61
    .line 62
    iget-object p1, p1, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 63
    .line 64
    iget-object p1, p1, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    add-int/2addr p1, v0

    .line 71
    iput p1, p0, Landroidx/compose/foundation/text/UndoManager;->c:I

    .line 72
    .line 73
    const v0, 0x186a0

    .line 74
    .line 75
    .line 76
    if-le p1, v0, :cond_8

    .line 77
    .line 78
    iget-object p0, p0, Landroidx/compose/foundation/text/UndoManager;->a:Landroidx/compose/foundation/text/UndoManager$Entry;

    .line 79
    .line 80
    if-eqz p0, :cond_4

    .line 81
    .line 82
    iget-object p1, p0, Landroidx/compose/foundation/text/UndoManager$Entry;->a:Landroidx/compose/foundation/text/UndoManager$Entry;

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    move-object p1, v1

    .line 86
    :goto_2
    if-nez p1, :cond_5

    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_5
    :goto_3
    if-eqz p0, :cond_6

    .line 90
    .line 91
    iget-object p1, p0, Landroidx/compose/foundation/text/UndoManager$Entry;->a:Landroidx/compose/foundation/text/UndoManager$Entry;

    .line 92
    .line 93
    if-eqz p1, :cond_6

    .line 94
    .line 95
    iget-object p1, p1, Landroidx/compose/foundation/text/UndoManager$Entry;->a:Landroidx/compose/foundation/text/UndoManager$Entry;

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_6
    move-object p1, v1

    .line 99
    :goto_4
    if-eqz p1, :cond_7

    .line 100
    .line 101
    iget-object p0, p0, Landroidx/compose/foundation/text/UndoManager$Entry;->a:Landroidx/compose/foundation/text/UndoManager$Entry;

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_7
    if-eqz p0, :cond_8

    .line 105
    .line 106
    iput-object v1, p0, Landroidx/compose/foundation/text/UndoManager$Entry;->a:Landroidx/compose/foundation/text/UndoManager$Entry;

    .line 107
    .line 108
    :cond_8
    :goto_5
    return-void
.end method

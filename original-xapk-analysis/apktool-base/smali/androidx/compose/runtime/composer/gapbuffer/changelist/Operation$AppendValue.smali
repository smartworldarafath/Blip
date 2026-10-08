.class public final Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$AppendValue;
.super Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppendValue"
.end annotation


# static fields
.field public static final c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$AppendValue;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$AppendValue;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-direct {v0, v3, v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;-><init>(III)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$AppendValue;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$AppendValue;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Landroidx/compose/runtime/composer/RememberManager;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;->b(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    check-cast p0, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;->b(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    instance-of p5, p1, Landroidx/compose/runtime/RememberObserverHolder;

    .line 14
    .line 15
    if-eqz p5, :cond_0

    .line 16
    .line 17
    move-object p5, p1

    .line 18
    check-cast p5, Landroidx/compose/runtime/RememberObserverHolder;

    .line 19
    .line 20
    check-cast p4, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 21
    .line 22
    iget-object v0, p4, Landroidx/compose/runtime/internal/RememberEventDispatcher;->e:Landroidx/compose/runtime/collection/MutableVector;

    .line 23
    .line 24
    invoke-virtual {v0, p5}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p4, p4, Landroidx/compose/runtime/internal/RememberEventDispatcher;->d:Landroidx/collection/MutableScatterSet;

    .line 28
    .line 29
    invoke-virtual {p4, p5}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    iget p4, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->n:I

    .line 33
    .line 34
    if-nez p4, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string p4, "Can only append a slot if not current inserting"

    .line 38
    .line 39
    invoke-static {p4}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget p4, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->i:I

    .line 43
    .line 44
    iget p5, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->j:I

    .line 45
    .line 46
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->c(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    iget-object v0, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->b:[I

    .line 51
    .line 52
    add-int/lit8 v1, p0, 0x1

    .line 53
    .line 54
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->r(I)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {p3, v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->g([II)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iput v0, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->i:I

    .line 63
    .line 64
    iput v0, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->j:I

    .line 65
    .line 66
    invoke-virtual {p3, p2, p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->x(II)V

    .line 67
    .line 68
    .line 69
    if-lt p4, v0, :cond_2

    .line 70
    .line 71
    add-int/lit8 p4, p4, 0x1

    .line 72
    .line 73
    add-int/lit8 p5, p5, 0x1

    .line 74
    .line 75
    :cond_2
    iget-object p0, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->c:[Ljava/lang/Object;

    .line 76
    .line 77
    aput-object p1, p0, v0

    .line 78
    .line 79
    iput p4, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->i:I

    .line 80
    .line 81
    iput p5, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->j:I

    .line 82
    .line 83
    return-void
.end method

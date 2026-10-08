.class public final Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ResetSlots;
.super Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResetSlots"
.end annotation


# static fields
.field public static final c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ResetSlots;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ResetSlots;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    invoke-direct {v0, v1, v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;-><init>(III)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ResetSlots;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ResetSlots;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Landroidx/compose/runtime/composer/RememberManager;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V
    .locals 0

    .line 1
    iget p0, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->n:I

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p0, "Cannot reset when inserting"

    .line 7
    .line 8
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-virtual {p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->G()V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    iput p0, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t:I

    .line 16
    .line 17
    invoke-virtual {p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->o()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget p2, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->h:I

    .line 22
    .line 23
    sub-int/2addr p1, p2

    .line 24
    iput p1, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->u:I

    .line 25
    .line 26
    iput p0, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->i:I

    .line 27
    .line 28
    iput p0, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->j:I

    .line 29
    .line 30
    iput p0, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->o:I

    .line 31
    .line 32
    return-void
.end method

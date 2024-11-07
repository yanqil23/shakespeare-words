#!/bin/bash

# Make all letters lowercase
tr '[:upper:]' '[:lower:]' < $1 |

# Remove punctuation
sed 's/[[:punct:]]//g' |

# Replace spaces and tabs with newlines
sed 's/[[:space:]]/\n/g' |

# Remove blank lines
grep -v '^[[:space:]]*$' |

sort |

> sorted_$1
